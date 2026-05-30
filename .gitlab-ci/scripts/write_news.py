#! /usr/bin/env python3

import argparse
import os
import subprocess
import tempfile
import requests
import sys
from pathlib import Path


def decrement_gnome_version(version: str) -> str:
    version_split = version.split(".")
    # Major is always an int
    major = int(version_split[0])
    minor = version_split[1]

    if minor.startswith("alpha"):
        return f"{major - 1}.0"
    elif minor.startswith("beta"):
        return f"{major}.alpha"
    elif minor.startswith("rc"):
        return f"{major}.beta"
    else:
        minor_ = int(minor)
        if minor_ == 0:
            return f"{major - 1}.rc"
        elif minor_ > 10:
            raise ValueError(f"Minor release number is bigger than 10: {minor_}")
        #  minor_ > 0
        else:
            return f"{major}.{minor_ - 1}"

    return ""


def download_release_tarball(file_path, release, major):
    url = f"https://download.gnome.org/sources/gnome-build-meta/{major}/gnome-build-meta-{release}.tar.xz"
    response = requests.get(url, timeout=30)
    response.raise_for_status()

    with open(file_path, "wb") as f:
        f.write(response.content)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-v", "--version", dest="version", help="GNOME version to release"
    )
    args = parser.parse_args()

    new = args.version
    old = decrement_gnome_version(new)
    major_old = old.split(".")[0]

    with tempfile.TemporaryDirectory() as tmpdir:
        old_tar = os.path.join(tmpdir, f"gnome-build-meta-{old}.tar.xz")
        download_release_tarball(old_tar, old, major_old)
        # Not uploaded, use the local archive we just created
        new_tar = os.path.join(os.getcwd(), f"gnome-build-meta-{new}.tar")

        # Once we merge it and works, we can rework the script and merge these two
        # so we do everything in one place, without shelling out, and we write a file
        # instead of stdout.
        # But for now, use the version of the script we know that works and is tested,
        # before we go further.
        script = os.path.join(os.getcwd(), Path(".gitlab-ci/scripts/generate_news.py"))
        news_file = os.path.join(os.getcwd(), Path("NEWS"))

        with open(news_file, "w") as f:
            subprocess.run(
                [sys.executable, script, old_tar, new_tar],
                stdout=f,
                check=True,
                text=True,
                cwd=tmpdir,
                timeout=300,
            )


if __name__ == "__main__":
    main()
