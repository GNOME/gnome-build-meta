#!/usr/bin/bash

set -eu

if ! grep -qE '([[:space:]]|^)gnomeos[.]extensions([[:space:]]|$)' </proc/cmdline; then
    exit 0
fi

mkdir -p "${1}/multi-user.target.wants"
ln -s /usr/lib/systemd/system/gnomeos-extensions.service "${1}/multi-user.target.wants/gnomeos-extensions.service"

ln -s /usr/lib/systemd/system/run-mount-eoslive.mount "${1}/multi-user.target.wants/run-mount-eoslive.mount"
