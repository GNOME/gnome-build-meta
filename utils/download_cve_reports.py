"""
Downloads stable release branch CVE report artifacts.
"""

import os
import sys
import zipfile

import requests

calendar = "https://gitlab.gnome.org/Teams/Websites/release.gnome.org/-/raw/jekyll/_data/calendar.json"

resp = requests.get(calendar, timeout=20)
data = resp.json()

releases = [data['unstable'], data['stable'], data['old_stable']]
branches = []

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

        branches.append(branch)

    except requests.exceptions.Timeout:
        print(f"Download of artifacts for {branch}, timed out")
        if branch == f"gnome-{data['unstable']}":
            pass
        else:
            sys.exit(1)
    except requests.HTTPError:
        print(f"Failed to download artifacts for {branch} release")
        if branch == f"gnome-{data['unstable']}":
            print(f"{branch} is unstable so artifacts may not always be available")
        else:
            sys.exit(1)

for branch in branches:
    archive_dir = os.path.join("public", branch)
    with zipfile.ZipFile(f"{branch}.zip", "r") as zip_ref:
        zip_ref.extractall(archive_dir)

print("All CVE reports, for the supported release branches, downloaded.")
