#!/usr/bin/env python3

import os


server_url = os.environ.get("FLAT_MANAGER_SERVER")
env_name = os.environ.get("ENVIRONMENT_NAME")
repo_name = os.environ.get("FLAT_MANAGER_REPO")
flatpak_branch = os.environ.get("FLATPAK_BRANCH")
arches = os.environ.get("SUPPORTED_ARCHES")

targets = os.environ.get("TARGETS")
targets_nightly = os.environ.get("TARGETS_nightly")
targets_repo = os.environ.get("TARGETS_REPO")

ref_name = os.environ.get("CI_COMMIT_REF_NAME")

protected = os.environ.get("CI_COMMIT_REF_PROTECTED")
is_tag = os.environ.get("CI_COMMIT_TAG")


def print_env():
    print(f"Flatpak Branch: {flatpak_branch}")
    print(f"Server: {server_url}")
    print(f"Environment name: {env_name}")
    print(f"Repo name: {repo_name}")
    print(f"Supported Architectures: {arches}")

    print(f"Targets: {targets}")
    print(f"Targets Nightly: {targets_nightly}")

    print(f"Targets REPO: {targets_repo}")

    print(f"CI_COMMIT_REF_NAME: {ref_name}")


def main():
    print_env()

    # asser our build is from a protected branch
    assert protected is True

    # Assert the job doesn't get triggered by tags accidentally
    assert is_tag is None

    if repo_name == "stable":
        assert flatpak_branch != "master"
        assert not flatpak_branch.endswith("beta")
        assert flatpak_branch.isnumeric()
        assert server_url == "https://hub.flathub.org/"

    if repo_name == "beta":
        assert flatpak_branch == "beta"
        assert server_url == "https://hub.flathub.org/"

    if repo_name == "nightly":
        assert flatpak_branch == "master"
        assert server_url == "https://flat-manager.gnome.org/"

    # Check that we never try to push //master refs
    # outside the master branch pipelines
    if ref_name not in ("master", "main"):
        assert flatpak_branch != "master"
    else:
        assert repo_name == "nightly"
        assert flatpak_branch == "master"

main()
