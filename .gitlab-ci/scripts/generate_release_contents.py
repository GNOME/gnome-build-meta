"""
Used to generate a Gitlab Page that has links to the CVE reports
of master and all supported, release branches, that are also stored on pages
"""

import os
import requests

CALENDAR = "https://gitlab.gnome.org/Teams/Websites/release.gnome.org/-/raw/jekyll/_data/calendar.json"
GITLAB_PAGES_FILENAME = "public/release-contents.html"

RELEASE_MANIFESTS = {"platform": "Platform", "sdk": "SDK", "vm": "VM", "gnomeos": "Secure VM"}

def populate_branch_html(release_contents, branch: str) -> None:
    """CVE report html template."""

    if not os.path.exists(f"public/{branch}"):
        return

    release_contents.write(f"<h3> {branch}</h3>")
    for name, pretty_name in RELEASE_MANIFESTS.items():
        path = f"{branch}/cve-reports/{name}.html"
        if os.path.exists(f"public/{path}"):
            release_contents.write(f"""<p><a href="{path}">{pretty_name} CVE Report</a></p>""")

def main():
    """Generates html for page containing links to CVE
    reports of master and stable branches.
    """
    # Obtain release IDs
    resp = requests.get(CALENDAR, timeout=20)
    data = resp.json()
    releases = [data["unstable"], data["stable"], data["old_stable"]]
    branches = ["master", *(f"gnome-{release}" for release in releases)]

    with open(GITLAB_PAGES_FILENAME, "w", encoding="UTF-8") as release_contents:

        head_template = """<html>
            <head>
            <title>Release Contents</title>
            </head>
            <body>
            <h2>CVE Reports</h2>
        """

        release_contents.write(head_template)

        for branch in branches:
            populate_branch_html(release_contents, branch)

        print("Release Contents page has been generated and published.")

if __name__ == "__main__":
    main()
