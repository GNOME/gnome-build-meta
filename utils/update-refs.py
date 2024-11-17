#! /usr/bin/env python3

import argparse
import os
import subprocess
from datetime import datetime

parser = argparse.ArgumentParser()
parser.add_argument(
    "--new-branch", help="Commit to a new branch after tracking", action="store_true"
)
parser.add_argument(
    "--track-boards", help="Track elements used by board images", action="store_true"
)
args = parser.parse_args()

now = datetime.now()

core_elements = [
    "core.bst",
    "vm/image.bst",
    "vm/repo-devel.bst",
    "iso/image.bst",
]

boards_elements = [
    "boards/pinephone/image.bst",
    "boards/pinephone-pro/image.bst",
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

if args.new_branch:
    git(
        "switch",
        "--create",
        "update-bot/" + now.strftime("%F-%H-%M"),
    )

    git("add", "--update", ".")

    git("commit", "--message", "Update element refs")
