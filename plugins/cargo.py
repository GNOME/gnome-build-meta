#
#  Copyright (C) 2019 Codethink Limited
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library. If not, see <http://www.gnu.org/licenses/>.
#
#  Authors:
#        Tristan Van Berkom <tristan.vanberkom@codethink.co.uk>

"""
cargo - Automatically stage crate dependencies
==============================================
A convenience Source element for vendoring rust project dependencies.

Placing this source in the source list, after a source which stages a
Cargo.lock file, will allow this source to read the Cargo.lock file and
obtain the crates automatically into %{vendordir}.

**Usage:**

.. code:: yaml

   # Specify the cargo source kind
   kind: cargo

   # Url of the crates repository to download from (default: https://static.crates.io/crates)
   url: https://static.crates.io/crates

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
"""

import json
import tarfile
import pytoml
import urllib.request
import urllib.error
import contextlib
import shutil
from buildstream import Source, SourceFetcher, SourceError
from buildstream import utils, Consistency
import os.path


# This automatically goes into .cargo/config
#
_default_vendor_config_template = \
    '[source.crates-io]\n' + \
    'registry = "{vendorurl}"\n' + \
    'replace-with = "vendored-sources"\n' + \
    '[source.vendored-sources]\n' + \
    'directory = "{vendordir}"\n'


# Crate()
#
# Use a SourceFetcher class to be the per crate helper
#
# Args:
#    cargo (Cargo): The main Source implementation
#    name (str): The name of the crate to depend on
#    version (str): The version of the crate to depend on
#    sha (str|None): The sha256 checksum of the downloaded crate
#
class Crate(SourceFetcher):

    def __init__(self, cargo, name, version, sha=None):
        self.cargo = cargo
        self.name = name
        self.version = str(version)
        self.sha = sha
        self.mark_download_url(self.cargo.url)

    ########################################################
    #     SourceFetcher API method implementations         #
    ########################################################

    def fetch(self, alias_override=None):

        # Just a defensive check, it is impossible for the
        # file to be already cached because Source.fetch() will
        # not be called if the source is already Consistency.CACHED.
        #
        if os.path.isfile(self._get_mirror_file()):
            return  # pragma: nocover

        # Download the crate
        crate_url = self._get_url(alias_override)
        with self.cargo.timed_activity("Downloading: {}".format(crate_url), silent_nested=True):
            sha256 = self._download_crate(crate_url)
            if self.sha is not None and sha256 != self.sha:
                raise SourceError("File downloaded from {} has sha256sum '{}', not '{}'!"
                                  .format(self.url, sha256, self.sha))

    ########################################################
    #        Helper APIs for the Cargo Source to use       #
    ########################################################

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
            with tarfile.open(mirror_file) as tar:
                tar.extractall(path=directory)
                members = tar.getmembers()

            if len(members) != 0:
                dirname = members[0].name.split('/')[0]
                package_dir = os.path.join(directory, dirname)
                checksum_file = os.path.join(package_dir,
                                             ".cargo-checksum.json")
                with open(checksum_file, 'w') as f:
                    checksum_data = {'package': self.sha,
                                     'files': {}}
                    json.dump(checksum_data, f)

        except (tarfile.TarError, OSError) as e:
            raise SourceError("{}: Error staging source: {}".format(self, e)) from e

    # get_consistency():
    #
    # Get the consistency of this Crate
    #
    # Returns:
    #    (Consistency): The consistency state of this Crate
    #
    def get_consistency(self):

        if self.sha is None:
            return Consistency.INCONSISTENT

        if os.path.isfile(self._get_mirror_file()):
            return Consistency.CACHED

        return Consistency.RESOLVED

    ########################################################
    #                   Private helpers                    #
    ########################################################

    # _download_crate()
    #
    # Downloads the crate from the url and caches it.
    #
    # Args:
    #    url (str): The url to download from
    #
    # Returns:
    #    (str): The sha256 checksum of the downloaded crate
    #
    def _download_crate(self, url):

        try:
            with self.cargo.tempdir() as td:
                default_name = os.path.basename(url)
                request = urllib.request.Request(url)
                request.add_header('Accept', '*/*')

                # We do not use etag in case what we have in cache is
                # not matching ref in order to be able to recover from
                # corrupted download.
                if self.sha:
                    etag = self._get_etag(self.sha)
                    if etag and self.get_consistency() == Consistency.CACHED:
                        request.add_header('If-None-Match', etag)

                with contextlib.closing(urllib.request.urlopen(request)) as response:
                    info = response.info()

                    etag = info['ETag'] if 'ETag' in info else None

                    filename = info.get_filename(default_name)
                    filename = os.path.basename(filename)
                    local_file = os.path.join(td, filename)
                    with open(local_file, 'wb') as dest:
                        shutil.copyfileobj(response, dest)

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

        except urllib.error.HTTPError as e:
            if e.code == 304:
                # 304 Not Modified.
                # Because we use etag only for matching sha, currently specified sha is what
                # we would have downloaded.
                return self.sha
            raise SourceError("{}: Error mirroring {}: {}"
                              .format(self, url, e), temporary=True) from e

        except (urllib.error.URLError, urllib.error.ContentTooShortError, OSError) as e:
            raise SourceError("{}: Error mirroring {}: {}"
                              .format(self, url, e), temporary=True) from e

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
        url = self.cargo.translate_url(self.cargo.url,
                                       alias_override=alias)
        return '{url}/{name}/{name}-{version}.crate'.format(url = url,
                                                            name = self.name,
                                                            version = self.version)

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
        etagfilename = os.path.join(self._get_mirror_dir(), '{}.etag'.format(sha))
        if os.path.exists(etagfilename):
            with open(etagfilename, 'r') as etagfile:
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
        etagfilename = os.path.join(self._get_mirror_dir(), '{}.etag'.format(sha))
        with utils.save_file_atomic(etagfilename) as etagfile:
            etagfile.write(etag)

    # _get_mirror_dir()
    #
    # Gets the local mirror directory for this upstream cargo repository
    #
    def _get_mirror_dir(self):
        return os.path.join(self.cargo.get_mirror_directory(),
                            utils.url_directory_name(self.cargo.url),
                            self.name,
                            self.version)

    # _get_mirror_file()
    #
    # Gets the local mirror filename for this crate
    #
    # Args:
    #    sha (str|None): The sha256 checksum of the downloaded crate
    #
    def _get_mirror_file(self, sha=None):
        return os.path.join(self._get_mirror_dir(), sha or self.sha)


class CargoSource(Source):

    # We need the Cargo.lock file to construct our ref at track time
    BST_REQUIRES_PREVIOUS_SOURCES_TRACK = True


    ########################################################
    #       Plugin/Source API method implementations       #
    ########################################################
    def configure(self, node):

        # The url before any aliasing
        #
        self.url = self.node_get_member(node, str, 'url', 'https://static.crates.io/crates')
        self.ref = self.node_get_member(node, list, 'ref', None)
        self.cargo_lock = self.node_get_member(node, str, 'cargo-lock', 'Cargo.lock')
        self.vendor_dir = self.node_get_member(node, str, 'vendor-dir', 'crates')

        self.node_validate(node, Source.COMMON_CONFIG_KEYS + ['url', 'ref', 'cargo-lock', 'vendor-dir'])

        self.crates = self._parse_crates(self.ref)

    def preflight(self):
        return

    def get_unique_key(self):
        return [self.url, self.cargo_lock, self.vendor_dir, self.ref]
    
    def get_consistency(self):
        if self.ref is None:
            return Consistency.INCONSISTENT

        consistency = Consistency.CACHED
        for crate in self.crates:
            consistency = min(consistency, crate.get_consistency())
        return consistency

    def load_ref(self, node):
        self.ref = self.node_get_member(node, list, 'ref', None)
        self.crates = self._parse_crates(self.ref)

    def get_ref(self):
        return self.ref

    def set_ref(self, ref, node):
        node['ref'] = self.ref = ref
        self.crates = self._parse_crates(self.ref)

    def track(self, previous_sources_dir):
        new_ref = []
        lockfile = os.path.join(previous_sources_dir, self.cargo_lock)

        try:
            with open(lockfile, 'r') as f:
                try:
                    lock = pytoml.load(f)
                except pytoml.core.TomlError as e:
                    raise SourceError("Malformed Cargo.lock file at: {}".format(self.cargo_lock),
                                      detail="{}".format(e)) from e
        except FileNotFoundError as e:
            raise SourceError("Failed to find Cargo.lock file at: {}".format(self.cargo_lock),
                              detail="The cargo plugin expects to find a Cargo.lock file in\n" +
                              "the sources staged before it in the source list, but none was found.") from e

        # FIXME: Better validation would be good here, so we can raise more
        #        useful error messages in the case of a malformed Cargo.lock file.
        #
        for package in lock['package']:
            if 'source' not in package:
                continue
            new_ref += [{
                'name': package['name'],
                'version': str(package['version'])
            }]

        # Make sure the order we set it at track time is deterministic
        new_ref = sorted(new_ref, key = lambda c: (c['name'], c['version']))

        # Download the crates and get their shas
        for crate_obj in new_ref:
            crate = Crate(self, crate_obj['name'], crate_obj['version'])

            crate_url = crate._get_url()
            with self.timed_activity("Downloading: {}".format(crate_url), silent_nested=True):
                crate_obj['sha'] = crate._download_crate(crate_url)

        return new_ref

    def stage(self, directory):

        # Stage the crates into the vendor directory
        vendor_dir = os.path.join(directory, self.vendor_dir)
        for crate in self.crates:
            crate.stage(vendor_dir)

        # Stage our vendor config
        vendor_config = _default_vendor_config_template.format(vendorurl=self.url,
                                                               vendordir=self.vendor_dir)
        conf_dir = os.path.join(directory, '.cargo')
        conf_file = os.path.join(conf_dir, 'config')
        os.makedirs(conf_dir, exist_ok=True)
        with open(conf_file, 'w') as f:
            f.write(vendor_config)

    def get_source_fetchers(self):
        return self.crates

    ########################################################
    #                   Private helpers                    #
    ########################################################

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

        return [
            Crate(self, crate['name'], crate['version'], sha=crate.get('sha', None))
            for crate in refs
        ]

def setup():
    return CargoSource
