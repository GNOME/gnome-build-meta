"""
Used to generate a Gitlab Page that has links to the CVE reports
of master and all supported, release branches, that are also stored on pages
"""

import shutil

import requests

CALENDAR = "https://gitlab.gnome.org/Teams/Websites/release.gnome.org/-/raw/jekyll/_data/calendar.json"
GITLAB_PAGES_URL = "https://gnome.pages.gitlab.gnome.org/gnome-build-meta"
GITLAB_PAGES_FILENAME = "release-contents.html"


def populate_branch_html(release_contents, branch: str) -> None:
    """CVE report html template."""
    html_template = f"""<html>
    <h3> {branch}</h3>
    <p><a
    href="{GITLAB_PAGES_URL}/{branch}/cve-reports/platform.html">Platform CVE Report</a></p>
    <p><a
    href="{GITLAB_PAGES_URL}/{branch}/cve-reports/sdk.html">SDK CVE Report</a></p>
    <p><a
    href="{GITLAB_PAGES_URL}/{branch}/cve-reports/vm.html">VM CVE Report</a></p>
    <p><a
    href="{GITLAB_PAGES_URL}/{branch}/cve-reports/vm-secure.html">Secure VM CVE Report</a></p>
    """
    release_contents.write(html_template)


def main():
    """Generates html for page containing links to CVE
    reports of master and stable branches.
    """
    # Obtain release IDs
    resp = requests.get(CALENDAR, timeout=20)
    data = resp.json()
    release_branches = [data["unstable"], data["stable"], data["old_stable"]]

    with open(GITLAB_PAGES_FILENAME, "w", encoding="UTF-8") as release_contents:

        head_template = """<html>
            <head>
            <title>Release Contents</title>
            </head>
            <body>
            <h2>CVE Reports</h2>
        """

        release_contents.write(head_template)

        populate_branch_html(release_contents, "master")

        for release in release_branches:
            branch = f"gnome-{release}"
            populate_branch_html(release_contents, branch)

        shutil.move(GITLAB_PAGES_FILENAME, "public/")
        print("Release Contents page has been generated and published.")

if __name__ == "__main__":
    main()
