#! /usr/bin/env python3
#
# SPDX-License-Identifier: AGPL-3.0-or-later

import argparse


def create_stable_announcement(major: int, minor: int, is_final: bool):
    # This hardcodes that we only support 2 versions at a time
    final_notice = ""
    if is_final:
        final_notice = f"\nThis is the final release of GNOME {major}. Please upgrade to GNOME {major + 1} or GNOME {major + 2}.\n"

    stable_txt = f"""
Hi,

GNOME {major}.{minor} is now available!

This is a stable bugfix release for GNOME {major}. All operating systems shipping GNOME {major} are encouraged to upgrade.
{final_notice}
* Review the list of [updated modules and changes](https://download.gnome.org/teams/releng/{major}.{minor}/NEWS).
* Use [the official BuildStream project snapshot](https://download.gnome.org/sources/gnome-build-meta/{major}/gnome-build-meta-{major}.{minor}.tar.xz) to compile GNOME {major}.{minor}.

GNOME {major}.{minor} is designed to be a boring bugfix update for GNOME {major} so it should be a safe and uneventful upgrade from earlier versions of GNOME {major}.

Enjoy! ❤️
GNOME Release Team
    """

    return stable_txt


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument("version", type=str, help="The GNOME version. ex: 47.8")
    args = parser.parse_args()

    full_version = args.version.split(".")
    major = int(full_version[0])
    minor = int(full_version[1])
    stable = True

    if stable and minor != 0:
        final = minor == 10
        print(create_stable_announcement(major, minor, final))

    # TODO:
    # alpha/beta/rc and .0 are slightly different
    # notably we usually include a screenshot of gnome tour and a link to an .iso for those versions
    # additionally alpha/beta/rc also have a big Pre-release warning in the announcement
    else:
        pass

    # TODO:
    # Have CI create the announcement after tagging and publish it using the discourse API


if __name__ == "__main__":
    main()
