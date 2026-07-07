#! /usr/bin/env python3
#
# SPDX-License-Identifier: AGPL-3.0-or-later

import argparse
import os
from typing import List


def create_discourse_post(content: str, title: str, category_id: int, tags: List[str]):
    from pydiscourse import DiscourseClient

    api_username = os.getenv("DISCOURSE_API_USERNAME")
    api_key = os.getenv("DISCOURSE_API_KEY")

    client = DiscourseClient(
        "https://discourse.gnome.org", api_username=api_username, api_key=api_key
    )
    topic = client.create_post(content, title=title, category_id=category_id, tags=tags)

    return topic


def is_stable(major: int, minor: str) -> bool:
    major = int(major)
    minor = str(minor)
    if minor.startswith("alpha"):
        return False
    elif minor.startswith("beta"):
        return False
    elif minor.startswith("rc"):
        return False
    else:
        minor_ = int(minor)
        if minor_ > 10:
            raise ValueError(f"Minor release number is bigger than 10: {minor_}")

        return True

    raise ValueError("Run out of numbers")


# Returns a tuple of strings, where its (subject, content)
def create_stable_announcement(major: int, minor: int) -> (str, str):
    # .0 announcments are skipped as we handle the release notes through press releases
    if minor == 0:
        return ("", "")

    # This hardcodes that we only support 2 versions at a time
    final_notice = ""
    if minor == 10:
        final_notice = f"\nThis is the final release of GNOME {major}. Please upgrade to GNOME {major + 1} or GNOME {major + 2}.\n"

    subject = f"GNOME {major}.{minor} is released"
    content = f"""
Hi,

GNOME {major}.{minor} is now available!

This is a stable bugfix release for GNOME {major}. All operating systems shipping GNOME {major} are encouraged to upgrade.
{final_notice}
* Review the list of [updated modules and changes](https://download.gnome.org/sources/gnome-build-meta/{major}/gnome-build-meta-{major}.{minor}.news).
* Use [the official BuildStream project snapshot](https://download.gnome.org/sources/gnome-build-meta/{major}/gnome-build-meta-{major}.{minor}.tar.xz) to compile GNOME {major}.{minor}.

GNOME {major}.{minor} is designed to be a boring bugfix update for GNOME {major} so it should be a safe and uneventful upgrade from earlier versions of GNOME {major}.

Enjoy! ❤️
GNOME Release Team
"""

    return (subject, content)


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument("version", type=str, help="The GNOME version. ex: 47.8")
    parser.add_argument(
        "--dry-run",
        action="store_true",
        default=False,
        help="Print the contents instead of publishing to discourse",
    )
    args = parser.parse_args()

    dry_run = args.dry_run
    full_version = args.version.split(".")

    major = int(full_version[0])
    minor = str(full_version[1])

    if minor == "0":
        print(
            "Skipping stable .0 release. Enjoy the release party and press announcment."
        )
        return

    stable = is_stable(major, minor)

    # 612 is the ID of the Announcment category on GNOME Discourse
    # https://discourse.gnome.org/c/news-and-events/announcements/612
    # https://discourse.gnome.org/tags/c/news-and-events/announcements/612/release-team/52
    discource_category = 612
    discource_tags = ["release-team"]

    if stable:
        (subject, content) = create_stable_announcement(major, minor)
    else:
        # TODO:
        # alpha/beta/rc and .0 are slightly different
        # notably we usually include a screenshot of gnome tour and a link to an .iso for those versions
        # additionally alpha/beta/rc also have a big Pre-release warning in the announcement
        (subject, content) = "", ""

    if dry_run or not stable:
        print(f"Subject: {subject}")
        print(f"Content: {content}")
    else:
        create_discourse_post(content, subject, discource_category, discource_tags)


if __name__ == "__main__":
    main()
