#!/bin/bash

set -eux

pcrlockdir=/var/lib/pcrlock.d

case $(uname -m) in
    x86_64)
        arch=x64
        ;;
    *)
        exit 0
        ;;
esac

"${pcrlockdir}/620-shim.pcrlock"
"${pcrlockdir}/630-systemd-boot.pcrlock.d/systemd-boot.pcrlock"
"${pcrlockdir}/630-systemd-boot.pcrlock.d/systemd-boot-fallback.pcrlock"
rmdir "${pcrlockdir}/630-systemd-boot.pcrlock.d" || true
rm -f "${pcrlockdir}"/640-kernel.pcrlock.d/*.pcrlock
rmdir "${pcrlockdir}"/640-kernel.pcrlock.d || true
rm -f "${pcrlockdir}"/650-kernel-addon-*.pcrlock.d/*.pcrlock
rmdir "${pcrlockdir}"/650-kernel-addon-*.pcrlock.d || true
