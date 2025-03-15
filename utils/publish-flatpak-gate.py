#!/usr/bin/env python3

import os
import sys

from ruamel.yaml import YAML

server_url = os.environ.get("FLAT_MANAGER_SERVER")
env_name = os.environ.get("ENVIRONMENT_NAME")
repo_name = os.environ.get("FLAT_MANAGER_REPO")
flatpak_branch = os.environ.get("FLATPAK_BRANCH")
arches = os.environ.get("SUPPORTED_ARCHES")

ref_name = os.environ.get("CI_COMMIT_REF_NAME")

protected = os.environ.get("CI_COMMIT_REF_PROTECTED")
is_tag = os.environ.get("CI_COMMIT_TAG")


def print_env(qualifier):
    print(f"Project conf qualifier: {qualifier}")

    print(f"Flatpak Branch: {flatpak_branch}")
    print(f"Server: {server_url}")
    print(f"Environment name: {env_name}")
    print(f"Repo name: {repo_name}")
    print(f"Supported Architectures: {arches}")

    print(f"CI_COMMIT_REF_NAME: {ref_name}")

    print(f"CI_COMMIT_REF_PROTECTED: {protected}")
    print(f"CI_COMMIT_TAG: {is_tag}")


def main():
    yaml = YAML(typ='safe', pure=True)
    with open('project.conf') as f:
        conf = yaml.load(f)

    qualifier = conf['variables']['qualifier']
    # Empty string is fine, None means its probably undefined
    assert qualifier is not None

    print_env(qualifier)

    # asser our build is from a protected branch
    assert protected == "true"

    # Assert the job doesn't get triggered by tags accidentally
    assert is_tag is None

    if repo_name == "stable":
        assert flatpak_branch != "master"
        assert not flatpak_branch.endswith("beta")
        assert flatpak_branch.isnumeric()
        assert qualifier.is_empty()
        assert server_url == "https://hub.flathub.org/"
    elif repo_name == "beta":
        assert flatpak_branch.endswith("beta")
        assert server_url == "https://hub.flathub.org/"
        assert qualifier == "beta"
    elif repo_name == "nightly":
        assert flatpak_branch == "master"
        assert server_url == "https://flat-manager.gnome.org/"
        assert qualifier.is_empty()
    else:
        print("Unknown value")
        sys.exit(42)

    # Check that we never try to push //master refs
    # outside the master branch pipelines
    if ref_name not in ("master", "main"):
        assert flatpak_branch != "master"
    else:
        assert ref_name in ("master", "main")
        assert repo_name == "nightly"
        assert flatpak_branch == "master"

main()
