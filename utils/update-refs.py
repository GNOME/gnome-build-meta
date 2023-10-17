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
    "--track-world", help="Commit to a new branch after tracking", action="store_true"
)
args = parser.parse_args()

now = datetime.now()

core_elements = [
    "core.bst",
    "flatpak-runtimes.bst",
    "vm/image.bst",
    "vm/repo-devel.bst",
    "iso/image.bst",
]

world_elements = [
    "boards/pinebook-pro/image.bst",
    "boards/pinephone/image.bst",
    "boards/pinephone-pro/image.bst",
    "boards/rock64/image.bst",
    "boards/raspberrypi-4/image.bst",
    "world.bst",
]

def git(*args):
    return subprocess.check_call(["git"] + list(args))


bst_command = os.environ.get("BST", "bst").split()


def bst(*args):
    return subprocess.check_call(bst_command + ["--on-error", "continue"] + list(args))

track_elements = world_elements if args.track_world else core_elements
bst("source", "track", "--deps", "all", *track_elements)

if args.new_branch:
    git(
        "switch",
        "--create",
        "update-bot/" + now.strftime("%F-%H-%M"),
    )

    git("add", "--update", ".")

    git("commit", "--message", "Update element refs")
