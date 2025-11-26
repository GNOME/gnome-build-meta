#! /usr/bin/env python3

import argparse
import os
import subprocess
from datetime import datetime
from typing import List, Tuple
from enum import Enum
import yaml
from collections.abc import Mapping, Sequence

parser = argparse.ArgumentParser()
parser.add_argument(
    "--new-branch", help="Commit to a new branch after tracking", action="store_true"
)
parser.add_argument(
    "--track-dependencies", help="Track dependencies elements instead of gnome elements", action="store_true"
)
parser.add_argument(
    "--no-ignore-elements", help="Do not ignore elements with known issues", action="store_true"
)
args = parser.parse_args()

now = datetime.now()

class ElementType(Enum):
    NOT_TRACKABLE = 1
    DEPENDENCY = 2
    GNOME = 3

def merge_element_type(a, b):
    for t in [ElementType.GNOME, ElementType.DEPENDENCY, ElementType.NOT_TRACKABLE]:
        if t in (a, b):
            return t

def get_element_type(filepath):
    if filepath.startswith('freedesktop-sdk.bst:'):
        return ElementType.NOT_TRACKABLE
    with open(filepath, 'r') as f:
        data = yaml.safe_load(f)

    trackable = ElementType.NOT_TRACKABLE
    sources = data.get('sources', [])
    if isinstance(sources, Sequence):
        for source in sources:
            if not isinstance(source, Mapping):
                continue

            if source.get('kind') == "git_repo":
                if source.get('track') is None:
                    continue

            if source.get('url', '').startswith('gnome:'):
                return ElementType.GNOME
            else:
                trackable = merge_element_type(trackable, ElementType.DEPENDENCY)

    include = data.get('(@)')
    if include is not None:
        if not isinstance(include, list):
            include = [include]

        for i in include:
            trackable = merge_element_type(trackable, get_element_type(i))
            if trackable == ElementType.GNOME:
                return ElementType.GNOME

    return trackable

gnome_elements = []
dependencies_elements = []

for dirpath, dirnames, filenames in os.walk('elements'):
    for filename in filenames:
        if filename.endswith(".bst"):
            filepath = os.path.join(dirpath, filename)
            element_name = os.path.relpath(filepath, 'elements')
            element_type = get_element_type(filepath)
            if element_type == ElementType.GNOME:
                gnome_elements.append(element_name)
            elif element_type == ElementType.DEPENDENCY:
                dependencies_elements.append(element_name)

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
    ("core/gnome-disk-utility.bst", "https://gitlab.gnome.org/GNOME/gnome-disk-utility/-/issues/455"),
]

def git(*args):
    return subprocess.check_call(["git"] + list(args))


bst_command = os.environ.get("BST", "bst").split()


def bst(*args):
    return subprocess.check_call(bst_command + ["--on-error", "continue"] + list(args))


bst("workspace", "close", "--all")

track_elements = dependencies_elements if args.track_dependencies else gnome_elements
bst("source", "track", *track_elements)

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
