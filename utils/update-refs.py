#! /usr/bin/env python3

import argparse
import os
import subprocess
from datetime import datetime

parser = argparse.ArgumentParser()
parser.add_argument(
    "--switch-branch", help="Commit to a new branch after tracking", action="store_true"
)
args = parser.parse_args()

now = datetime.now()

track_elements = [
    "core.bst",
    "flatpak-runtimes.bst",
    "vm/image.bst",
    "boards/pinebook-pro/image.bst",
    "boards/pinephone/image.bst",
    "boards/pinephone-pro/image.bst",
    "boards/rock64/image.bst",
    "boards/raspberrypi-4/image.bst",
    "vm/repo-devel.bst",
    "iso/image.bst",
]

bst_command = os.environ.get("BST", "bst").split()


def git(*args):
    return subprocess.check_call(["git"] + list(args))


def bst(*args):
    return subprocess.check_call(bst_command + ["--no-interactive"] + list(args))


bst("track", "--deps", "all", *track_elements)

if parser.switch_branch:
    git(
        "switch",
        "--force-create",
        "update-bot/" + now.strftime("%F-%H-%M"),
    )

    git("add", "--update", ".")

    git("commit", "--message", "Update element refs")
