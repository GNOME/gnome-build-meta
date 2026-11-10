#!/bin/bash

set -eux
shopt -s nullglob

pcrlockdir=/var/lib/pcrlock.d

case $(uname -m) in
    x86_64)
        arch=x64
        ;;
    *)
        exit 0
        ;;
esac

/usr/lib/systemd/systemd-pcrlock lock-pe "/boot/EFI/org.gnome.os/shim${arch}.efi" --pcrlock="${pcrlockdir}/620-shim.pcrlock"
/usr/lib/systemd/systemd-pcrlock lock-pe "/boot/EFI/systemd/systemd-boot${arch}.efi" --pcrlock="${pcrlockdir}/630-systemd-boot.pcrlock.d/systemd-boot.pcrlock"
if [ -e "/boot/EFI/systemd/systemd-boot-fallback${arch}.efi" ]; then
    /usr/lib/systemd/systemd-pcrlock lock-pe "/boot/EFI/systemd/systemd-boot-fallback${arch}.efi" --pcrlock="${pcrlockdir}/630-systemd-boot.pcrlock.d/systemd-boot-fallback.pcrlock"
else
    rm -f "${pcrlockdir}/630-systemd-boot.pcrlock.d/systemd-boot-fallback.pcrlock"
fi

declare -A generated_kernels
generated_kernels=()

for kernel in /boot/EFI/Linux/gnomeos_*.efi; do
    b="$(basename "${kernel}" .efi)"
    /usr/lib/systemd/systemd-pcrlock lock-pe "${kernel}" --pcrlock="${pcrlockdir}/640-kernel.pcrlock.d/${b}.pcrlock"
    generated_kernels+=(["${b}.pcrlock"]=1)
done

declare -A generated_addons

for addon in /boot/EFI/Linux/gnomeos_*.efi.extra.d/*.addon.efi; do
    kernel="$(dirname "${addon}")"
    k="$(basename "${kernel}" .efi.extra.d)"
    b=$(basename "${addon}" .addon.efi)
    # TODO: fix lock-uki
    /usr/lib/systemd/systemd-pcrlock lock-pe "${addon}" --pcrlock="${pcrlockdir}/650-kernel-addon-${b}.pcrlock.d/${k}.pcrlock"
    generated_addons+=(["650-kernel-addon-${b}.pcrlock.d/${k}.pcrlock"]=1)
    # Also we need to allow it to be empty.
    echo '{"records":[]}' >"${pcrlockdir}/650-kernel-addon-${b}.pcrlock.d/missing.pcrlock"
    generated_addons+=(["650-kernel-addon-${b}.pcrlock.d/missing.pcrlock"]=1)
done

for kernel in "${pcrlockdir}"/640-kernel.pcrlock.d/*.pcrlock; do
    if [ "${generated_kernels["$(basename "${kernel}")"]-unset}" = unset ]; then
        rm "${kernel}"
    fi
done

for addon in "${pcrlockdir}"/650-kernel-addon-*.pcrlock.d/*.pcrlock; do
    dir="$(basename "$(dirname "${addon}")")"
    b="$(basename "${addon}")"
    if [ "${generated_addons["${dir}/${b}"]-unset}" = unset ]; then
        rm "${addon}"
        rmdir "$(dirname "${addon}")" || true
    fi
done

if [ "${1-}" = make-policy ]; then
  /usr/lib/systemd/systemd-pcrlock make-policy --location=770 --pcr=0+1+2+3+4+5+7+11+14+15
fi
