#!/bin/bash

set -eu

args=()
cmdline=()

while [ $# -gt 0 ]; do
    case "$1" in
        --live-disk)
            live=disk
            ;;
        --live-cdrom)
            live=cdrom
            ;;
        --reset-installed)
            reset_installed=1
            ;;
        --reset)
            reset=1
            ;;
        --reset-secure-state)
            reset_secure=1
            ;;
        --buildid)
            shift
            buildid="$1"
            ;;
        --notpm)
            no_tpm=1
            ;;
        --serial)
            serial=1
            cmdline+=("console=ttyS0")
            ;;
        --cmdline)
            shift
            cmdline+=("$1")
            ;;
        *)
            args+=("$1")
            ;;
    esac
    shift
done

: ${STATE_DIR:="${PWD}/current-secure-vm"}
: ${SWTPM_STATE:="${STATE_DIR}/swtpm-state"}
: ${SWTPM_UNIT=swtpm-$(echo -n "$(realpath .)" | sha1sum | head -c 8)}
: ${BST:=bst}
: ${ARCH:="x86_64"}
: ${TPM_SOCK:="${XDG_RUNTIME_DIR}/${SWTPM_UNIT}/sock"}

if [ "${live+set}" = set ]; then
    : ${IMAGE_ELEMENT:="gnomeos/live-image.bst"}
else
    : ${IMAGE_ELEMENT:="gnomeos/image.bst"}
fi

BST_OPTIONS=(-o arch ${ARCH})

case "${ARCH}" in
    x86_64)
        BST_OPTIONS+=(-o x86_64_v3 true)
    ;;
esac

if [ "${#args[@]}" -ge 1 ]; then
    IMAGE_ELEMENT="${args[0]}"
fi
if [ "${#args[@]}" -ge 2 ]; then
    echo "Too many parameters" 1>&2
    exit 1
fi

if [ "${buildid+set}" = set ]; then
    if [ "${live+set}" = set ]; then
        echo "--live-* and --buildid together are not yet supported" 1>&2
        exit 1
    fi
    mkdir -p "${STATE_DIR}/builds"
    if ! [ -f "${STATE_DIR}/builds/disk_${buildid}.img.xz" ]; then
        wget "https://1270333429.rsc.cdn77.org/nightly/${buildid}/disk_${buildid}.img.xz" -O "${STATE_DIR}/builds/disk_${buildid}.img.xz.tmp"
        mv "${STATE_DIR}/builds/disk_${buildid}.img.xz.tmp" "${STATE_DIR}/builds/disk_${buildid}.img.xz"
    fi
fi

if ! [ "${no_tpm+set}" = set ]; then
    if systemctl --user -q is-active "${SWTPM_UNIT}"; then
        systemctl --user stop "${SWTPM_UNIT}"
    fi
    if systemctl --user -q is-failed "${SWTPM_UNIT}"; then
        systemctl --user reset-failed "${SWTPM_UNIT}"
    fi

    if [ "${reset_secure+set}" = set ] ; then
        rm -rf "${SWTPM_STATE}"
    fi
    [ -d "${SWTPM_STATE}" ] || mkdir -p "${SWTPM_STATE}"

    TPM_SOCK_DIR="$(dirname "${TPM_SOCK}")"
    [ -d "${TPM_SOCK_DIR}" ] ||  mkdir -p "${TPM_SOCK_DIR}"
    systemd-run --user --service-type=simple --unit="${SWTPM_UNIT}" -- swtpm socket --tpm2 --tpmstate dir="${SWTPM_STATE}" --ctrl type=unixio,path="${TPM_SOCK}"
fi

cleanup_dirs=()
cleanup() {
    if [ "${#cleanup_dirs[@]}" -gt 0 ]; then
        rm -rf "${cleanup_dirs[@]}"
    fi
}
trap cleanup EXIT

img_ext=img
if [ "${live+set}" = set ]; then
    img_ext=iso
fi

if [ "${reset+set}" = set ] || ! [ -f "${STATE_DIR}/disk.${img_ext}" ]; then
    mkdir -p "${STATE_DIR}"
    checkout="$(mktemp -d --tmpdir="${STATE_DIR}" checkout.XXXXXXXXXX)"
    cleanup_dirs+=("${checkout}")

    if [ "${buildid+set}" = set ]; then
        cp "${STATE_DIR}/builds/disk_${buildid}.img.xz" "${checkout}/disk.img.xz"
    else
        make -C files/boot-keys generate-keys
        "${BST}" "${BST_OPTIONS[@]}" build "${IMAGE_ELEMENT}"
        "${BST}" "${BST_OPTIONS[@]}" artifact checkout "${IMAGE_ELEMENT}" --directory "${checkout}"
    fi
    if [ "${live+set}" = set ]; then
        mv "${checkout}/disk.iso" "${STATE_DIR}/disk.iso"
    else
        unxz "${checkout}/disk.img.xz"
        truncate --size 50G "${checkout}/disk.img"
        mv "${checkout}/disk.img" "${STATE_DIR}/disk.img"
    fi
    rm -rf "${checkout}"
fi

if ! [ -f "${STATE_DIR}/OVMF_CODE.fd" ] || ! [ -f "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd" ]; then
    checkout="$(mktemp -d --tmpdir="${STATE_DIR}" checkout.XXXXXXXXXX)"
    cleanup_dirs+=("${checkout}")
    "${BST}" "${BST_OPTIONS[@]}" build freedesktop-sdk.bst:components/ovmf.bst
    "${BST}" "${BST_OPTIONS[@]}" artifact checkout freedesktop-sdk.bst:components/ovmf.bst --directory "${checkout}"
    cp "${checkout}/usr/share/ovmf/OVMF_CODE.fd" "${STATE_DIR}/OVMF_CODE.fd"
    cp "${checkout}/usr/share/ovmf/OVMF_VARS.fd" "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd"
fi

if [ "${reset_secure+set}" = set ] || ! [ -f "${STATE_DIR}/OVMF_VARS.fd" ]; then
    cp "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd" "${STATE_DIR}/OVMF_VARS.fd"
fi

QEMU_ARGS=()
QEMU_ARGS+=(-m 8G)
QEMU_ARGS+=(-M q35,accel=kvm)
QEMU_ARGS+=(-cpu host)
QEMU_ARGS+=(-smp 4)
QEMU_ARGS+=(-netdev user,id=net1)
QEMU_ARGS+=(-device virtio-net-pci,netdev=net1,bootindex=-1,romfile="")
QEMU_ARGS+=(-drive "if=pflash,file=${STATE_DIR}/OVMF_CODE.fd,readonly=on,format=raw")
QEMU_ARGS+=(-drive "if=pflash,file=${STATE_DIR}/OVMF_VARS.fd,format=raw")
if ! [ "${no_tpm+set}" = set ]; then
    QEMU_ARGS+=(-chardev "socket,id=chrtpm,path=${TPM_SOCK}")
    QEMU_ARGS+=(-tpmdev emulator,id=tpm0,chardev=chrtpm)
    QEMU_ARGS+=(-device tpm-tis,tpmdev=tpm0)
fi

QEMU_ARGS+=(-drive "if=none,id=boot-disk,file=${STATE_DIR}/disk.img,media=disk,format=raw,discard=on")
QEMU_ARGS+=(-device "virtio-blk-pci,drive=boot-disk,bootindex=1")

if [ "${live+set}" = set ]; then
    readonly=off
    if [ "${live-}" = cdrom ]; then
        readonly=on
    fi

    QEMU_ARGS+=(-drive "if=none,id=live-disk,file=${STATE_DIR}/disk.iso,media=${live-disk},format=raw,readonly=${readonly}")
    if [ "${live}" = disk ]; then
        QEMU_ARGS+=(-device "virtio-blk-pci,drive=live-disk,bootindex=2")
    elif [ "${live}" = cdrom ]; then
        QEMU_ARGS+=(-device "virtio-scsi-pci,id=scsi")
        QEMU_ARGS+=(-device "scsi-cd,drive=live-disk,bootindex=2")
    fi

    if [ "${reset_installed+set}" = set ]; then
        rm -f "${STATE_DIR}/disk.img"
    fi
    truncate --size 50G "${STATE_DIR}/disk.img"
fi

if [ "${serial+set}" = set ]; then
    QEMU_ARGS+=(-serial stdio)
fi

QEMU_ARGS+=(-device virtio-vga-gl -display gtk,gl=on)
QEMU_ARGS+=(-full-screen)
QEMU_ARGS+=(-device ich9-intel-hda)
QEMU_ARGS+=(-audiodev pa,id=sound0)
QEMU_ARGS+=(-device hda-output,audiodev=sound0)

if [ ${#cmdline[@]} -gt 0 ]; then
    QEMU_ARGS+=(-smbios "type=11,value=io.systemd.stub.kernel-cmdline-extra=${cmdline[*]}")
fi

exec qemu-system-x86_64 "${QEMU_ARGS[@]}"
