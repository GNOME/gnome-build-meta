#!/usr/bin/env python

# Copied from this snippet
# https://gitlab.gnome.org/-/snippets/6788

import tarfile
from pathlib import Path, PurePath
import yaml
import subprocess
import difflib
import sys


BASE_URL = "https://download.gnome.org/sources/"
CORE_DIRECTORIES = ["sdk-deps", "sdk", "core-deps", "core"]


def get_tarballs_from_gbm_tarball(tarball):
    tarballs = {}
    with tarfile.open(tarball) as tarf:
        for member in tarf.getmembers():
            path = PurePath(member.name)
            if len(path.parts) != 4 or path.parts[-2] not in CORE_DIRECTORIES:
                continue
            with tarf.extractfile(member) as f:
                data = yaml.safe_load(f)
            for source in data.get("sources", []):
                if source["kind"] != "tar":
                    continue
                url = source["url"]
                if url.startswith("gnome_downloads:"):
                    assert path.stem not in tarballs, (
                        path.stem,
                        tarballs[path.stem],
                        url,
                    )
                    tarballs[path.stem] = url.removeprefix("gnome_downloads:")
    return tarballs


def compare_tarball_lists(old_tarballs, new_tarballs):
    old_modules = set(old_tarballs)
    new_modules = set(new_tarballs)

    removed = old_modules - new_modules
    added = new_modules - old_modules
    common = new_modules & old_modules

    updated = []
    not_updated = []

    for module in sorted(common):
        if old_tarballs[module] == new_tarballs[module]:
            not_updated.append(module)
        else:
            updated.append([module, old_tarballs[module], new_tarballs[module]])

    return added, removed, updated, not_updated


def diff_news(old_tarball, new_tarball):
    with tarfile.open(old_tarball) as tarf:
        for member in tarf.getmembers():
            if PurePath(member.name).name == "NEWS":
                with tarf.extractfile(member) as f:
                    a = f.readlines()
                break
        else:
            return None  # No news file

    with tarfile.open(new_tarball) as tarf:
        for member in tarf.getmembers():
            if PurePath(member.name).name == "NEWS":
                with tarf.extractfile(member) as f:
                    b = f.readlines()
                break

    result = []

    for tag, _, _, j1, j2 in difflib.SequenceMatcher(None, a, b).get_opcodes():
        if tag in ["replace", "insert"]:
            result.extend(b[j1:j2])

    return "".join(line.decode() for line in result)


def extract_version(tarball):
    filename = PurePath(tarball).name
    name, _ = filename.split(".tar")
    _, version = name.rsplit("-", 1)
    return version


if __name__ == "__main__":
    try:
        old, new = sys.argv[1:]
    except:
        print(f"Usage: {sys.argv[0]} old_tarball new_tarball")
        sys.exit(1)

    old_tarballs = get_tarballs_from_gbm_tarball(old)
    new_tarballs = get_tarballs_from_gbm_tarball(new)

    added, removed, updated, not_updated = compare_tarball_lists(old_tarballs, new_tarballs)

    for module, old_tarball, new_tarball in updated:
        for tarball in (old_tarball, new_tarball):
            if not Path(tarball).exists():
                print("Downloading", tarball, file=sys.stderr)
                subprocess.run(["curl", "--create-dirs", "--output", tarball, BASE_URL + tarball])

    if added:
        print("The following modules have been added in this release:")
        print("   " + ", ".join(added))
        print()

    if removed:
        print("The following modules have been removed in this release:")
        print("   " + ", ".join(removed))
        print()

    if updated:
        print("The following modules have a new version:")
        for module, old_tarball, new_tarball in updated:
            print(f"- {module} ({extract_version(old_tarball)} => {extract_version(new_tarball)})")
        print()

    if not_updated:
        print("The following modules weren't upgraded in this release:")
        print("   " + ", ".join(not_updated))
        print()

    for module, old_tarball, new_tarball in updated:
        news = diff_news(old_tarball, new_tarball)

        if news:
            print("=" * 40)
            print("  " + module)
            print("=" * 40)
            print()
            print(news)
