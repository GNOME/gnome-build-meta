#! /usr/bin/env python3
#
# SPDX-License-Identifier: AGPL-3.0-or-later

from create_announcement import create_stable_announcement, is_stable

expected_48_9 = """
Hi,

GNOME 48.9 is now available!

This is a stable bugfix release for GNOME 48. All operating systems shipping GNOME 48 are encouraged to upgrade.

* Review the list of [updated modules and changes](https://download.gnome.org/sources/gnome-build-meta/48/gnome-build-meta-48.9.news).
* Use [the official BuildStream project snapshot](https://download.gnome.org/sources/gnome-build-meta/48/gnome-build-meta-48.9.tar.xz) to compile GNOME 48.9.

GNOME 48.9 is designed to be a boring bugfix update for GNOME 48 so it should be a safe and uneventful upgrade from earlier versions of GNOME 48.

Enjoy! ❤️
GNOME Release Team
"""

expected_48_10 = """
Hi,

GNOME 48.10 is now available!

This is a stable bugfix release for GNOME 48. All operating systems shipping GNOME 48 are encouraged to upgrade.

This is the final release of GNOME 48. Please upgrade to GNOME 49 or GNOME 50.

* Review the list of [updated modules and changes](https://download.gnome.org/sources/gnome-build-meta/48/gnome-build-meta-48.10.news).
* Use [the official BuildStream project snapshot](https://download.gnome.org/sources/gnome-build-meta/48/gnome-build-meta-48.10.tar.xz) to compile GNOME 48.10.

GNOME 48.10 is designed to be a boring bugfix update for GNOME 48 so it should be a safe and uneventful upgrade from earlier versions of GNOME 48.

Enjoy! ❤️
GNOME Release Team
"""

def test_create_stable_announcement():
    r48_9 = create_stable_announcement(48, 9)
    assert r48_9 == expected_48_9
    r48_10 = create_stable_announcement(48, 10)
    assert r48_10 == expected_48_10

    # .0 announcments are skipped as we handle the release notes through press releases
    assert create_stable_announcement(48, 0) == "" 

def test_is_stable():
    assert not is_stable(48, "alpha")
    assert not is_stable(48, "alpha0")
    assert not is_stable(48, "alpha1")
    assert not is_stable(48, "alpha.1")
    assert not is_stable(48, "beta")
    assert not is_stable(48, "rc")
    assert is_stable(48, "0")
    assert is_stable(48, 0)
    assert is_stable(48, 1)
    assert is_stable(48, 9)
    assert is_stable(48, 10)

