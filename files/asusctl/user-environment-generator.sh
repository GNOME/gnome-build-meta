#!/bin/bash

set -euo pipefail

if ! [ -d /sys/devices/platform/asus-nb-wmi ]; then
    exit 0
fi

echo "XDG_DATA_DIRS=${XDG_DATA_DIRS-}${XDG_DATA_DIRS+:}:/usr/share/asusctl/data"
