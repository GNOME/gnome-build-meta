#!/bin/bash
#
# Expand a disk image to a set size.
#

set -eu

if [ $# -ne 3 ]; then
    echo >&2 "Usage: $0 PATH SIZE UNIT"
    echo >&2
    echo >&2 "Example: $0 ./my_disk.img 10 GB"
    exit 1
fi

file=$1
disk_size=$2
unit=$3

echo "Expanding disk image ${file} to ${disk_size}${unit}"
dd if=/dev/zero of="${file}" seek=${disk_size} obs=1${unit} count=0
