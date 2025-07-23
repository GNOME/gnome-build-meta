#!/bin/bash

set -euo pipefail

if ! [ -d /sys/devices/platform/asus-nb-wmi ]; then
    exit 0
fi

ln -s /usr/lib/systemd/system/asusd.service "${1}/multi-user.target.d/asusd.service"
ln -s /usr/lib/systemd/system/asus-shutdown.service "${1}/multi-user.target.d/asus-shutdown.service"

if systemd-analyze --quiet condition ConditionKernelCommandLine=gnomeos.nvidia-mode=1; then
    ln -s /usr/lib/systemd/system/supergfxd.service "${1}/multi-user.target.d/supergfxd.service"
fi
