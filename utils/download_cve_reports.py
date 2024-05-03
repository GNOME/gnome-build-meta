"""
Downloads stable release branch CVE report artifacts.
"""

import glob
import shutil
import sys
import zipfile
from os import path

import requests

calendar = "https://gitlab.gnome.org/Teams/Websites/release.gnome.org/-/raw/jekyll/_data/calendar.json"

resp = requests.get(calendar, timeout=20)
data = resp.json()

releases = [data['unstable'], data['stable'], data['old_stable']]
for release in releases:
    branch = f"gnome-{release}"
    try:
        response = requests.get(
            f"https://gitlab.gnome.org/api/v4/projects/GNOME%2Fgnome-build-meta/jobs/artifacts/{branch}/download?job=cve_report",
            timeout=20,
        )
        response.raise_for_status()
        with open(f"{branch}.zip", "wb") as f:
            f.write(response.content)

    except requests.exceptions.Timeout:
        print(f"Download of artifacts for {branch}, timed out")
        if branch == f"gnome-{data['unstable']}":
            pass
        else:
            sys.exit(1)
    except requests.HTTPError:
        print(f"Failed to download artifacts for {branch} release")
        if branch == f"gnome-{data['unstable']}":
            pass
        else:
            sys.exit(1)

archives = glob.glob("./*.zip")
for archive in archives:
    archive_dir = path.splitext(path.basename(archive))[0]
    with zipfile.ZipFile(archive, "r") as zip_ref:
        zip_ref.extractall(archive_dir)
        shutil.move(archive_dir, "public/")
