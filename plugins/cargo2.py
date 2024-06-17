#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
#  Authors:
#        Tristan Van Berkom <tristan.vanberkom@codethink.co.uk>
#        Sophie Herold <sophieherold@gnome.org>

#
# This plugin was originally developped in the https://gitlab.com/BuildStream/bst-plugins-experimental/
# repository and was copied from a60426126e5bec2d630fcd889a9f5af13af00ea6
#
# After that the plugin was developed in buildstream-plugins:
# <https://github.com/apache/buildstream-plugins/blob/db71610b7ae9884f6d8cbe0d3cc5a1c657c19edb/src/buildstream_plugins/sources/cargo.py>
#
# It was moved to experimental as a new version again because of added
# external dependencies like dulwich.

"""
cargo2 - Automatically stage crate dependencies
===============================================
A convenience Source element for vendoring rust project dependencies.

Placing this source in the source list, after a source which stages a
Cargo.lock file, will allow this source to read the Cargo.lock file and
obtain the crates automatically into %{vendordir}.

**Usage:**

.. code:: yaml

   # Specify the cargo2 source kind
   kind: cargo2

   # Url of the crates repository to download from (default: https://static.crates.io/crates)
   url: https://static.crates.io/crates

   # Url mappings to download git sources from. The values support aliases to which global
   # mirrors are also applied. More specific mappings take precedence over more general ones.
   git-mirrors:
    https://gitlab.com: "github:"
    https://gitlab.com/specific/repo: https://example.org/specific/repo

   # Internal source reference, this is a list of dictionaries
   # which store the crate names and versions.
   #
   # This will be automatically updated with `bst track`
   ref:
   - name: packagename
     version: 1.2.1
   - name: packagename
     version: 1.3.0

   # Specify a directory for the vendored crates (defaults to ./crates)
   vendor-dir: crates

   # Optionally specify the name of the lock file to use (defaults to Cargo.lock)
   cargo-lock: Cargo.lock


See `built-in functionality doumentation
<https://docs.buildstream.build/master/buildstream.source.html#core-source-builtins>`_ for
details on common configuration options for sources.
"""

import contextlib
import glob
import json
import netrc
import os
import os.path
import shutil
import tarfile
import threading
import urllib.error
import urllib.parse
from urllib.parse import parse_qsl, urlencode, urlparse
import urllib.request

# We prefer tomli that was put into standard library as tomllib
# starting from 3.11
try:
    import tomllib  # type: ignore
except ImportError:
    import tomli as tomllib  # type: ignore

from buildstream import Source, SourceFetcher, SourceError
from buildstream import utils

import dulwich
from dulwich.repo import Repo
import tomlkit


# CrateRegistry()
#
# Use a SourceFetcher class to be the per crate helper.
#
# This one is for crates fetched from registries like crates.io.
#
# Args:
#    cargo (Cargo): The main Source implementation
#    name (str): The name of the crate to depend on
#    version (str): The version of the crate to depend on
#    sha (str|None): The sha256 checksum of the downloaded crate
#
class CrateRegistry(SourceFetcher):
    def __init__(self, cargo, name, version, sha=None):
        super().__init__()

        self.cargo = cargo
        self.name = name
        self.version = str(version)
        self.sha = sha
        self.mark_download_url(cargo.url)

    ########################################################
    #     SourceFetcher API method implementations         #
    ########################################################

    def fetch(self, alias_override=None, **kwargs):

        # Just a defensive check, it is impossible for the
        # file to be already cached because Source.fetch() will
        # not be called if the source is already cached.
        #
        if os.path.isfile(self._get_mirror_file()):
            return  # pragma: nocover

        # Download the crate
        crate_url, auth_scheme = self._get_url(alias_override)
        with self.cargo.timed_activity(
            "Downloading: {}".format(crate_url), silent_nested=True
        ):
            sha256 = self._download(crate_url, auth_scheme)
            if self.sha is not None and sha256 != self.sha:
                raise SourceError(
                    "File downloaded from {} has sha256sum '{}', not '{}'!".format(
                        crate_url, sha256, self.sha
                    )
                )

    ########################################################
    #        Helper APIs for the Cargo Source to use       #
    ########################################################

    def ref_node(self):
        return {
            "kind": "registry",
            "name": self.name,
            "version": self.version,
            "sha": self.sha,
        }

    # stage()
    #
    # A delegate method to do the work for a single crate
    # in Source.stage().
    #
    # Args:
    #    (directory): The vendor subdirectory to stage to
    #
    def stage(self, directory):
        try:
            mirror_file = self._get_mirror_file()

            if os.path.exists(
                os.path.join(directory, f"{self.name}-{self.version}")
            ):
                raise SourceError(
                    f"This project requests crate {self.name} {self.version} from multiple sources, "
                    "which is incompatible with vendoring since cargo does not support it."
                )

            with tarfile.open(mirror_file) as tar:
                tar.extractall(path=directory)
                members = tar.getmembers()

            if members:
                dirname = members[0].name.split("/")[0]
                package_dir = os.path.join(directory, dirname)
                checksum_file = os.path.join(
                    package_dir, ".cargo-checksum.json"
                )
                with open(checksum_file, "w", encoding="utf-8") as f:
                    checksum_data = {"package": self.sha, "files": {}}
                    json.dump(checksum_data, f)

        except (tarfile.TarError, OSError) as e:
            raise SourceError(
                "{}: Error staging source: {}".format(self, e)
            ) from e

    # is_cached()
    #
    # Get whether we have a local cached version of the source
    #
    # Returns:
    #   (bool): Whether we are cached or not
    #
    def is_cached(self):
        return os.path.isfile(self._get_mirror_file())

    # is_resolved()
    #
    # Get whether the current crate is resolved
    #
    # Returns:
    #   (bool): Whether we have a sha or not
    #
    def is_resolved(self):
        return self.sha is not None

    ########################################################
    #                   Private helpers                    #
    ########################################################

    # _download()
    #
    # Downloads the crate from the url and caches it.
    #
    # Args:
    #    url (str): The url to download from
    #
    # Returns:
    #    (str): The sha256 checksum of the downloaded crate
    #
    def _download(self, url, auth_scheme):
        # We do not use etag in case what we have in cache is
        # not matching ref in order to be able to recover from
        # corrupted download.
        if self.sha:
            etag = self._get_etag(self.sha)
        else:
            etag = None

        with self.cargo.tempdir() as td:
            local_file, etag, error = download_file(url, etag, td, auth_scheme)

            if error:
                raise SourceError(
                    "{}: Error mirroring {}: {}".format(self, url, error),
                    temporary=True,
                )

            # Make sure url-specific mirror dir exists.
            os.makedirs(self._get_mirror_dir(), exist_ok=True)

            # Store by sha256sum
            sha256 = utils.sha256sum(local_file)
            # Even if the file already exists, move the new file over.
            # In case the old file was corrupted somehow.
            os.rename(local_file, self._get_mirror_file(sha256))

            if etag:
                self._store_etag(sha256, etag)
            return sha256

    # _get_url()
    #
    # Fetches the URL to download this crate from
    #
    # Args:
    #    alias (str|None): The URL alias to apply, if any
    #
    # Returns:
    #    (str): The URL for this crate
    #
    def _get_url(self, alias=None):
        path = "{name}/{name}-{version}.crate".format(
            name=self.name, version=self.version
        )
        extra_data = {}
        if utils.get_bst_version() >= (2, 2):
            translated_url = self.cargo.translate_url(
                self.cargo.url,
                suffix=path,
                alias_override=alias,
                extra_data=extra_data,
            )
        else:
            translated_url = (
                self.cargo.translate_url(self.cargo.url, alias_override=alias)
                + path
            )

        return translated_url, extra_data.get("http-auth")

    # _get_etag()
    #
    # Fetches the locally stored ETag information for this
    # crate's download.
    #
    # Args:
    #    sha (str): The sha256 checksum of the downloaded crate
    #
    # Returns:
    #    (str|None): The ETag to use for requests, or None if nothing is
    #                locally downloaded
    #
    def _get_etag(self, sha):
        etagfilename = os.path.join(
            self._get_mirror_dir(), "{}.etag".format(sha)
        )
        if os.path.exists(etagfilename):
            with open(etagfilename, "r", encoding="utf-8") as etagfile:
                return etagfile.read()

        return None

    # _store_etag()
    #
    # Stores the locally cached ETag information for this crate.
    #
    # Args:
    #    sha (str): The sha256 checksum of the downloaded crate
    #    etag (str): The ETag to use for requests of this crate
    #
    def _store_etag(self, sha, etag):
        etagfilename = os.path.join(
            self._get_mirror_dir(), "{}.etag".format(sha)
        )
        with utils.save_file_atomic(etagfilename) as etagfile:
            etagfile.write(etag)

    # _get_mirror_dir()
    #
    # Gets the local mirror directory for this upstream cargo repository
    #
    def _get_mirror_dir(self):
        return os.path.join(
            self.cargo.get_mirror_directory(),
            utils.url_directory_name(self.cargo.url),
            self.name,
            self.version,
        )

    # _get_mirror_file()
    #
    # Gets the local mirror filename for this crate
    #
    # Args:
    #    sha (str|None): The sha256 checksum of the downloaded crate
    #
    def _get_mirror_file(self, sha=None):
        return os.path.join(self._get_mirror_dir(), sha or self.sha)


# Locks on repositories for write access
REPO_LOCKS = {}  # type: dict[str, threading.Lock]


# CrateGit()
#
# Use a SourceFetcher class to be the per crate helper.
#
# This one is for crates fetched from git repositories.
#
# Args:
#    cargo (Cargo): The main Source implementation
#    name (str): The name of the crate to depend on
#    version (str): The version of the crate to depend on
#    repo (str): Repository URL
#    commit (str): Sha of the git commit
class CrateGit(SourceFetcher):
    def __init__(self, cargo, name, version, repo, commit, query):
        super().__init__()

        self.cargo = cargo
        self.name = name
        self.version = str(version)
        self.repo = repo
        self.commit = commit
        self.query = query
        self.repo_mirrored = cargo.mirrored_git_url(repo)

        self.mark_download_url(self.repo_mirrored)

    ########################################################
    #     SourceFetcher API method implementations         #
    ########################################################

    def fetch(self, alias_override=None, **kwargs):
        lock = REPO_LOCKS.setdefault(self._get_mirror_dir(), threading.Lock())
        repo_url = self._get_url(alias=alias_override)

        with lock, self._mirror_repo() as repo, self.cargo.timed_activity(
            f"Fetching from {repo_url}"
        ):
            # TODO: Auth not supported
            client, path = dulwich.client.get_transport_and_path(repo_url)
            client.fetch(
                path,
                repo,
                determine_wants=lambda refs, depth=None: [
                    self.commit.encode()
                ],
                depth=1,
            )

    ########################################################
    #        Helper APIs for the Cargo Source to use       #
    ########################################################

    def ref_node(self):
        node = {
            "kind": "git",
            "name": self.name,
            "version": self.version,
            "repo": self.repo,
            "commit": self.commit,
        }

        if self.query:
            node["query"] = self.query

        return node

    # stage()
    #
    # A delegate method to do the work for a single git repo
    # in Source.stage().
    #
    # Args:
    #    (directory): The vendor subdirectory to stage to
    #
    def stage(self, directory):
        self.cargo.status(f"Checking out {self.commit}")

        crate_target_dir = os.path.join(
            directory, f"{self.name}-{self.version}"
        )
        tmp_dir = os.path.join(directory, f"{self.name}-{self.version}-tmp")

        try:
            os.mkdir(tmp_dir)
        except FileExistsError as e:
            raise SourceError(
                f"This project requests crate {self.name} {self.version} from multiple sources, "
                "which is incompatible with vendoring since cargo does not support it."
            ) from e

        with Repo(self._get_mirror_dir(), bare=True) as mirror:
            with Repo.init(tmp_dir) as dest:
                dest.object_store.add_object(mirror[self.commit.encode()])
                dest.refs[b"HEAD"] = self.commit.encode()
                dest.update_shallow([self.commit.encode()], [])

            with Repo(tmp_dir, object_store=mirror.object_store) as dest:
                dest.reset_index()

        # Workspace handling
        #
        # When new workspace features are added it is worth checking if
        # <https://github.com/flatpak/flatpak-builder-tools/blob/HEAD/cargo/flatpak-cargo-generator.py>
        # has implemented them already. This implementation is inspired by the mentioned source.

        with open(os.path.join(tmp_dir, "Cargo.toml"), "rb") as f:
            root_toml = tomllib.load(f)

        crates = {}

        if "workspace" in root_toml:
            # Find wanted crate inside workspace
            for member in root_toml["workspace"].get("members", []):
                for crate_toml_path in glob.glob(
                    os.path.join(tmp_dir, member, "Cargo.toml")
                ):
                    crate_path = os.path.normpath(
                        os.path.dirname(crate_toml_path)
                    )

                    with open(crate_toml_path, "rb") as f:
                        crate_toml = tomllib.load(f)
                        crates[crate_toml["package"]["name"]] = {
                            "config": crate_toml,
                            "path": crate_path,
                        }

            crate = crates[self.name]
            # Apply information inherited from workspace Cargo.toml
            config_inherit_workspace(crate["config"], root_toml["workspace"])

            with open(
                os.path.join(crates[self.name]["path"], "Cargo.toml"),
                "w",
                encoding="utf-8",
            ) as f:
                tomlkit.dump(crate["config"], f)

            shutil.move(crate["path"], crate_target_dir)
        else:
            # No workspaces involved, just reploy complete dir as is
            shutil.move(tmp_dir, crate_target_dir)

        # Write .cargo-checksum.json required by cargo vendoring
        with open(
            os.path.join(crate_target_dir, ".cargo-checksum.json"),
            "w",
            encoding="utf-8",
        ) as f:
            json.dump({"files": {}, "package": None}, f)

        shutil.rmtree(tmp_dir, ignore_errors=True)

    # is_cached()
    #
    # Get whether we have a local cached version of the git commit
    #
    # Returns:
    #   (bool): Whether we are cached or not
    #
    def is_cached(self):
        with Repo(self._get_mirror_dir(), bare=True) as repo:
            return self.commit.encode() in repo

    # is_resolved()
    #
    # Get whether the current git repo is resolved
    #
    # Returns:
    #   (bool): Always true since we always have a commit
    #
    def is_resolved(self):
        return True

    ########################################################
    #                   Private helpers                    #
    ########################################################

    # _get_mirror_dir()
    #
    # Gets the local mirror directory for this upstream git repository
    #
    def _get_mirror_dir(self):
        if self.repo.endswith(".git"):
            norm_url = self.repo[:-4]
        else:
            norm_url = self.repo

        return os.path.join(
            self.cargo.get_mirror_directory(),
            utils.url_directory_name(norm_url) + ".git",
        )

    # _get_url()
    #
    # Gets the git URL to download this crate from
    #
    # Args:
    #    alias (str|None): The URL alias to apply, if any
    #
    # Returns:
    #    (str): The URL for this crate
    #
    def _get_url(self, alias=None):
        return self.cargo.translate_url(
            self.repo_mirrored, alias_override=alias, primary=False
        )

    # _mirror_repo()
    #
    # Returns the mirror repo, initialized if it doesn not exist yet
    #
    # Returns:
    #    (Repo): The mirror repo crate
    #
    def _mirror_repo(self):
        try:
            return Repo.init_bare(self._get_mirror_dir(), mkdir=True)
        except FileExistsError:
            return Repo(self._get_mirror_dir(), bare=True)


# config_inherit_workspace()
#
# Cargo workspaces can define different values that can be inherited by member crates.
# The values that can be inherited are currently package information like the license
# (see `inherit_package()`) and settings for dependencies like the required version
# (see `inherit_deps`).
#
# Args:
#    config (dict): Crate config
#    workspace_config (dict): Workspace config
def config_inherit_workspace(config, workspace_config):
    workspace_deps = workspace_config.get("dependencies")
    if workspace_deps is not None:
        dependencies = []

        # Find all dependency lists that can inherit from the workspace
        # <https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html#inheriting-a-dependency-from-a-workspace>
        for key in ["dependencies", "dev-dependencies", "build-dependencies"]:
            if key in config:
                dependencies.append(config[key])
        if "target" in config:
            for target in config["target"].values():
                if "dependencies" in target:
                    dependencies.append(target["dependencies"])

        for deps in dependencies:
            inherit_deps(deps, workspace_deps)

    inherit_package(config, workspace_config)
    inherit_lints(config, workspace_config)


# inherit_package()
#
# Modifies the values in `items` that are configured to inherit from the workspace.
# The new values are taken from `workspace_items`.
# <https://doc.rust-lang.org/cargo/reference/workspaces.html#the-package-table>
#
# Args:
#    config (dict): The crate config
#    workspace_config (dict): The workspace config
def inherit_package(config, workspace_config):
    workspace_items = workspace_config.get("package")
    items = config.get("package")

    for key, value in items.items():
        if isinstance(value, dict) and "workspace" in value:
            workspace_value = workspace_items.get(key)
            if workspace_value is None:
                raise SourceError(
                    f"Failed to inherit 'package.{key}' in crate's Cargo.toml. "
                    "Value missing from workspace's Cargo.toml."
                )

            items[key] = workspace_value

# inherit_lints()
#
# Inherits lints from the workspace. Lints are either completely overwritten by
# workspace values or defined by the crate itself.
# <https://doc.rust-lang.org/cargo/reference/workspaces.html#the-lints-table>
#
# Args:
#    config (dict): The crate config
#    workspace_config (dict): The workspace config
def inherit_lints(config, workspace_config):
    if config.get('lints', {}).get('workspace'):
        if workspace_config.get('lints'):
            config['lints'] = workspace_config.get('lints')

# inherit_deps()
#
# Modifies the values in `deps` if they are set to inherit information from the workspace.
# The new values are taken from `workspace_deps`.
# <https://doc.rust-lang.org/cargo/reference/workspaces.html#the-dependencies-table>
#
# Args:
#    deps (dict): A dependencies section like from [dev-dependencies]
#    workspace_deps (dict): Workspace dependency table
def inherit_deps(deps, workspace_deps):
    for crate, details in deps.items():
        if isinstance(details, dict) and "workspace" in details:
            workspace_details = workspace_deps.get(crate)
            if workspace_details is None:
                raise SourceError(
                    "Failed to inherit dependency information for '{crate}' in crate's Cargo.toml. "
                    "Value missing from workspace's Cargo.toml."
                )

            # Workspace definition is a dict
            if isinstance(workspace_details, dict):
                del details["workspace"]
                details.update(workspace_details)
            # Workspace definition is just a version
            else:
                del details["workspace"]
                details.update({"version": workspace_details})


class CargoSource(Source):
    BST_MIN_VERSION = "2.0"

    # We need the Cargo.lock file to construct our ref at track time
    BST_REQUIRES_PREVIOUS_SOURCES_TRACK = True

    ########################################################
    #       Plugin/Source API method implementations       #
    ########################################################
    def configure(self, node):
        # The url before any aliasing
        #
        self.original_url = node.get_str(
            "url", "https://static.crates.io/crates"
        )
        self.cargo_lock = node.get_str("cargo-lock", "Cargo.lock")
        self.vendor_dir = node.get_str("vendor-dir", "crates")
        self.git_mirrors = node.get_mapping("git-mirrors", {})

        # If the specified URL is just an alias, require the alias to resolve
        # to a URL with a trailing slash. Otherwise, append a trailing slash if
        # it's missing, for backward compatibility.
        self.url = self.original_url
        if not self.url.endswith(":") and not self.url.endswith("/"):
            self.url += "/"

        node.validate_keys(
            Source.COMMON_CONFIG_KEYS
            + ["url", "ref", "cargo-lock", "vendor-dir", "git-mirrors"]
        )

        # Needs to be marked here so that `track` can translate it later.
        self.mark_download_url(self.url)

        # Needs to be marked here such that it can be used in fetch later.
        for crate in node.get_sequence("ref", []):
            if crate.get_str("kind", "") == "git":
                self.mark_download_url(
                    self.mirrored_git_url(crate.get_str("repo")), primary=False
                )

        self.load_ref(node)

    def preflight(self):
        return

    def get_unique_key(self):
        return [self.original_url, self.cargo_lock, self.vendor_dir, self.ref, "x"]

    def is_resolved(self):
        return (self.ref is not None) and all(
            crate.is_resolved() for crate in self.crates
        )

    def is_cached(self):
        return all(crate.is_cached() for crate in self.crates)

    def load_ref(self, node):
        ref = node.get_sequence("ref", None)
        self._recompute_crates(ref)

    def get_ref(self):
        return self.ref

    def set_ref(self, ref, node):
        node["ref"] = ref
        self._recompute_crates(node.get_sequence("ref"))

    def track(self, *, previous_sources_dir):
        new_ref = []
        lockfile = os.path.join(previous_sources_dir, self.cargo_lock)

        try:
            with open(lockfile, "rb") as f:
                try:
                    lock = tomllib.load(f)
                except tomllib.TOMLDecodeError as e:
                    raise SourceError(
                        "Malformed Cargo.lock file at: {}".format(
                            self.cargo_lock
                        ),
                        detail="{}".format(e),
                    ) from e
        except FileNotFoundError as e:
            raise SourceError(
                "Failed to find Cargo.lock file at: {}".format(
                    self.cargo_lock
                ),
                detail="The cargo plugin expects to find a Cargo.lock file in\n"
                + "the sources staged before it in the source list, but none was found.",
            ) from e

        # FIXME: Better validation would be good here, so we can raise more
        #        useful error messages in the case of a malformed Cargo.lock file.
        #
        for package in lock["package"]:
            if "source" not in package:
                continue

            ref = {}

            (kind, url) = package["source"].split("+", 2)
            ref["kind"] = kind

            if kind not in ["git", "registry"]:
                raise SourceError(
                    f"Unkown source kind '{kind}' for crate {package['name']}"
                )

            if kind == "git":
                url_parsed = urlparse(url)
                ref["commit"] = url_parsed.fragment

                # Remove extra information since it confused URL translation
                ref["repo"] = url_parsed._replace(
                    fragment="", query=""
                ).geturl()

                # Store the query information since cargo checks it with the commit
                # The query contains branch, tag, or rev
                query_list = parse_qsl(url_parsed.query)
                if query_list:
                    ref["query"] = dict(query_list)

            ref.update(
                {"name": package["name"], "version": str(package["version"])}
            )

            if kind == "registry":
                ref["sha"] = package.get("checksum")

            new_ref.append(ref)

        # Make sure the order we set it at track time is deterministic
        new_ref = sorted(
            new_ref,
            key=lambda c: (
                c["name"],
                c["version"],
                c.get("repo", ""),
                c.get("commit", ""),
            ),
        )

        # Download the crates and get their shas
        for crate_obj in new_ref:
            if crate_obj["kind"] != "registry" or crate_obj["sha"] is not None:
                continue

            crate = CrateRegistry(
                self, crate_obj["name"], crate_obj["version"]
            )

            crate_url, auth_scheme = crate._get_url()
            with self.timed_activity(
                "Downloading: {}".format(crate_url), silent_nested=True
            ):
                crate_obj["sha"] = crate._download(crate_url, auth_scheme)

        return new_ref

    def stage(self, directory):
        # Stage the crates into the vendor directory
        vendor_dir = os.path.join(directory, self.vendor_dir)
        cargo_config = {"source": {}}

        cargo_config["source"]["crates-io"] = {
            "registry": self.translate_url(self.url),
            "replace-with": "vendored-sources",
        }

        # Every git repo needs an extra entry in the config
        for crate in self.crates:
            crate.stage(vendor_dir)
            if isinstance(crate, CrateGit):
                section = {
                    "git": crate.repo,
                    "replace-with": "vendored-sources",
                }

                # Options like branch, tag, rev have to be specified in the config
                # if they were specified in the Cargo.toml. Otherwise cargo will not
                # find the crate.
                if crate.query:
                    query = "?" + urlencode(crate.query)
                    for key, value in crate.query.items():
                        section[key] = value
                else:
                    query = ""

                source_id = f"git+{crate.repo}{query}"

                cargo_config["source"][source_id] = section

        cargo_config["source"]["vendored-sources"] = {
            "directory": self.vendor_dir
        }

        conf_dir = os.path.join(directory, ".cargo")
        conf_file = os.path.join(conf_dir, "config.toml")
        os.makedirs(conf_dir, exist_ok=True)
        with open(conf_file, "w", encoding="utf-8") as f:
            tomlkit.dump(cargo_config, f)

    def get_source_fetchers(self):
        return self.crates

    ########################################################
    #      Helper APIs for CrateGit and Cargo to use       #
    ########################################################

    # mirrored_git_url():
    #
    # Applies the defined "git-mirrors" mappings to a git URL.
    #
    # Args:
    #    (str) git_url: The raw URL from the element
    #
    # Returns:
    #    (str): The git URL with potentially mirror applied
    #
    def mirrored_git_url(self, git_url):
        use_mirror = None
        for url, mirror in self.git_mirrors.items():
            mirror = mirror.as_str()
            if git_url.startswith(url):
                # Use the most specific (longest) URL
                # Silence pylint because of bug <https://github.com/pylint-dev/pylint/issues/1498>
                # pylint: disable=unsubscriptable-object
                if use_mirror is None or len(use_mirror[0]) < len(url):
                    use_mirror = (url, mirror)

        if use_mirror is not None:
            return git_url.replace(use_mirror[0], use_mirror[1])
        else:
            return git_url

    ########################################################
    #                   Private helpers                    #
    ########################################################

    def _recompute_crates(self, ref):
        self.crates = self._parse_crates(ref)

        self.ref = [crate.ref_node() for crate in self.crates]

    # _parse_crates():
    #
    # Generates a list of crates based on the passed ref
    #
    # Args:
    #    (list|None) refs: The list of name/version dictionaries
    #
    # Returns:
    #    (list): A list of Crate objects
    #
    def _parse_crates(self, refs):

        # Return an empty list for no ref
        if refs is None:
            return []

        crates = []

        for crate in refs:
            kind = crate.get_str("kind", default="registry")
            if kind == "git":
                crates.append(
                    CrateGit(
                        self,
                        crate.get_str("name"),
                        crate.get_str("version"),
                        crate.get_str("repo"),
                        crate.get_str("commit"),
                        {
                            k: v.as_str()
                            for k, v in crate.get_mapping("query", {}).items()
                        },
                    )
                )
            else:
                crates.append(
                    CrateRegistry(
                        self,
                        crate.get_str("name"),
                        crate.get_str("version"),
                        sha=crate.get_str("sha", None),
                    )
                )

        return crates


def setup():
    return CargoSource


# Code for `download_file`
#
# Copied from buildstream-plugins project:
# <https://github.com/apache/buildstream-plugins/blob/db71610b7ae9884f6d8cbe0d3cc5a1c657c19edb/src/buildstream_plugins/sources/_utils.py>
#
# Previously mostly copied from downloadablefilesource.py in buildstream.


class _NetrcPasswordManager:
    def __init__(self, netrc_config):
        self.netrc = netrc_config

    def add_password(self, realm, uri, user, passwd):
        pass

    def find_user_password(self, realm, authuri):
        if not self.netrc:
            return None, None
        parts = urllib.parse.urlsplit(authuri)
        entry = self.netrc.authenticators(parts.hostname)
        if not entry:
            return None, None
        else:
            login, _, password = entry
            return login, password


def _parse_netrc():
    netrc_config = None
    try:
        netrc_config = netrc.netrc()
    except (OSError, netrc.NetrcParseError):
        # If the .netrc file was not found, FileNotFoundError will be
        # raised, but OSError will be raised directly by the netrc package
        # in the case that $HOME is not set.
        #
        # This will catch both cases.
        pass

    return netrc_config


class _UrlOpenerCreator:
    def __init__(self, netrc_config):
        self.netrc_config = netrc_config

    def get_url_opener(self, bearer_auth):
        if self.netrc_config and not bearer_auth:
            netrc_pw_mgr = _NetrcPasswordManager(self.netrc_config)
            http_auth = urllib.request.HTTPBasicAuthHandler(netrc_pw_mgr)
            return urllib.request.build_opener(http_auth)
        return urllib.request.build_opener()


def download_file(url, etag, directory, auth_scheme):
    opener_creator = _UrlOpenerCreator(_parse_netrc())
    opener = opener_creator.get_url_opener(auth_scheme == "bearer")
    default_name = os.path.basename(url)
    request = urllib.request.Request(url)
    request.add_header("Accept", "*/*")
    request.add_header("User-Agent", "BuildStream/2")

    if opener_creator.netrc_config and auth_scheme == "bearer":
        parts = urllib.parse.urlsplit(url)
        entry = opener_creator.netrc_config.authenticators(parts.hostname)
        if entry:
            _, _, password = entry
            auth_header = "Bearer " + password
            request.add_header("Authorization", auth_header)

    if etag is not None:
        request.add_header("If-None-Match", etag)

    try:
        with contextlib.closing(opener.open(request)) as response:
            info = response.info()

            # some servers don't honor the 'If-None-Match' header
            if etag and info["ETag"] == etag:
                return None, None, None

            etag = info["ETag"]
            length = info.get("Content-Length")

            filename = info.get_filename(default_name)
            filename = os.path.basename(filename)
            local_file = os.path.join(directory, filename)
            with open(local_file, "wb") as dest:
                shutil.copyfileobj(response, dest)

                actual_length = dest.tell()
                if length and actual_length < int(length):
                    raise ValueError(f"Partial file {actual_length}/{length}")

    except urllib.error.HTTPError as e:
        if e.code == 304:
            # 304 Not Modified.
            # Because we use etag only for matching ref, currently specified ref is what
            # we would have downloaded.
            return None, None, None

        return None, None, str(e)
    except (urllib.error.URLError, OSError, ValueError) as e:
        # Note that urllib.request.Request in the try block may throw a
        # ValueError for unknown url types, so we handle it here.
        return None, None, str(e)

    return local_file, etag, None
