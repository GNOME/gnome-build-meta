#!/bin/bash

root="$(awk '{ if ($2 == "/") print $1 }' /proc/mounts)"

if [ -z "${root}" ]; then
    echo "Root device not found" 1>&2
    exit 1
fi

exec /usr/bin/resize2fs "${root}"
