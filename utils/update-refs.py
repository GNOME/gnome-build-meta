#! /usr/bin/env python3

import argparse
import os
import subprocess
from datetime import datetime
from typing import List, Tuple

parser = argparse.ArgumentParser()
parser.add_argument(
    "--new-branch", help="Commit to a new branch after tracking", action="store_true"
)
parser.add_argument(
    "--track-boards", help="Track elements used by board images", action="store_true"
)
parser.add_argument(
    "--no-ignore-elements", help="Do not ignore elements with known issues", action="store_true"
)
args = parser.parse_args()

now = datetime.now()

core_elements = [
    "core.bst",
    "gnomeos/filesystem.bst",
    "gnomeos/filesystem-devel.bst",
    "iso/image.bst",
]

boards_elements = [
    "boards/pinephone/image.bst",
    "boards/pinephone-pro/image.bst",
]

# A list of elements to reset/checkout from master, effectively ignoring
# them from tracking any newer refs.
#
# It's common that due to a certain change an element might be blocking others
# or failing to build for a couple days. Ignore them so our bot can keep
# updating everything else automatically.
#
# Please open an issue or MR before adding to the list.
ignore_elements: List[Tuple[str, str]] = [
    ("gnomeos-deps/shim.bst", "https://lists.freedesktop.org/archives/systemd-devel/2025-March/051297.html"),
    ("sdk/glycin.bst", "https://gitlab.gnome.org/GNOME/gnome-build-meta/-/issues/951"),
]

def git(*args):
    return subprocess.check_call(["git"] + list(args))


bst_command = os.environ.get("BST", "bst").split()


def bst(*args):
    return subprocess.check_call(bst_command + ["--on-error", "continue"] + list(args))


bst("workspace", "close", "--all")

track_elements = boards_elements if args.track_boards else core_elements
bst("-o", "x86_64_v3", "true", "source", "track", "--deps", "all", *track_elements)
bst("source", "track", "--deps", "all", "flatpak-runtimes.bst")

print("Track completed!")

if not args.no_ignore_elements:
    for (element, reason) in ignore_elements:
        print(f"Ignoring {element} due to: {reason}")
        git("restore", f"elements/{element}")

if args.new_branch:
    git(
        "switch",
        "--create",
        "update-bot/" + now.strftime("%F-%H-%M"),
    )

    git("add", "--update", "elements")

    git("commit", "--message", "Update element refs")
