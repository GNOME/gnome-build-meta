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

def get_element_type(filepath):
    with open(filepath, 'r') as f:
        data = yaml.safe_load(f)

    sources = data.get('sources')
    if sources:
        first_source = sources[0]

        if first_source.get('kind') in ("tar", "zip", "remote", "local"):
            return ElementType.NOT_TRACKABLE
        elif first_source.get('kind') != 'git_repo':
            print("Warning: unknown source kind", first_source.get('kind'))

        if first_source.get('url', '').startswith('gnome:'):
            return ElementType.GNOME
        else:
            return ElementType.DEPENDENCY

    include = data.get('(@)')
    if include is not None:
        if not isinstance(include, list):
            include = [include]

        for i in include:
            if i.startswith('freedesktop-sdk.bst:'):
                continue

            trackable = get_element_type(i)
            if trackable:
                return trackable

    return None

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
    ("core-deps/vte.bst", "Crashes kgx and is very annoying https://gitlab.gnome.org/GNOME/vte/-/work_items/2949"),
    ("gnomeos-deps/bootc.bst", "We have manually overwritten the sources to append .git at a couple github urls"),
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
