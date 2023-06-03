#!/bin/bash

set -eu

args=()

while [ $# -gt 0 ]; do
    case "$1" in
        --reset)
            reset=1
            ;;
        --reset-secure-state)
            reset_secure=1
            ;;
        --notpm)
            no_tpm=1
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
: ${TPM_SOCK:="${XDG_RUNTIME_DIR}/${SWTPM_UNIT}/sock"}
: ${IMAGE_ELEMENT:="vm-secure/image.bst"}

if [ "${#args[@]}" -ge 1 ]; then
    IMAGE_ELEMENT="${args[0]}"
fi
if [ "${#args[@]}" -ge 2 ]; then
    echo "Too many parameters" 1>&2
    exit 1
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

if [ "${reset+set}" = set ] || ! [ -f "${STATE_DIR}/disk.img" ]; then
    checkout="$(mktemp -d --tmpdir="${STATE_DIR}" checkout.XXXXXXXXXX)"
    cleanup_dirs+=("${checkout}")
    make -C files/boot-keys generate-keys
    "${BST}" build "${IMAGE_ELEMENT}"
    "${BST}" artifact checkout "${IMAGE_ELEMENT}" --directory "${checkout}"
    truncate --size 50G "${checkout}/disk.img"
    mv "${checkout}/disk.img" "${STATE_DIR}/disk.img"
    rm -rf "${checkout}"
fi

if ! [ -f "${STATE_DIR}/OVMF_CODE.fd" ] || ! [ -f "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd" ]; then
    checkout="$(mktemp -d --tmpdir="${STATE_DIR}" checkout.XXXXXXXXXX)"
    cleanup_dirs+=("${checkout}")
    bst build freedesktop-sdk.bst:components/ovmf.bst
    "${BST}" artifact checkout freedesktop-sdk.bst:components/ovmf.bst --directory "${checkout}"
    cp "${checkout}/usr/share/ovmf/OVMF_CODE.fd" "${STATE_DIR}/OVMF_CODE.fd"
    cp "${checkout}/usr/share/ovmf/OVMF_VARS.fd" "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd"
fi

if [ "${reset_secure+set}" = set ] || ! [ -f "${STATE_DIR}/OVMF_VARS.fd" ]; then
    cp "${STATE_DIR}/OVMF_VARS_TEMPLATE.fd" "${STATE_DIR}/OVMF_VARS.fd"
fi

QEMU_ARGS=()
QEMU_ARGS+=(-m 8G)
QEMU_ARGS+=(-M q35,accel=kvm)
QEMU_ARGS+=(-smp 4)
QEMU_ARGS+=(-net nic,model=virtio)
QEMU_ARGS+=(-net user)
QEMU_ARGS+=(-drive "if=pflash,file=${STATE_DIR}/OVMF_CODE.fd,readonly=on,format=raw")
QEMU_ARGS+=(-drive "if=pflash,file=${STATE_DIR}/OVMF_VARS.fd,format=raw")
if ! [ "${no_tpm+set}" = set ]; then
    QEMU_ARGS+=(-chardev "socket,id=chrtpm,path=${TPM_SOCK}")
    QEMU_ARGS+=(-tpmdev emulator,id=tpm0,chardev=chrtpm)
    QEMU_ARGS+=(-device tpm-tis,tpmdev=tpm0)
fi
QEMU_ARGS+=(-drive "if=virtio,file=${STATE_DIR}/disk.img,media=disk,format=raw")
QEMU_ARGS+=(-device virtio-vga-gl -display gtk,gl=on)
QEMU_ARGS+=(-full-screen)
QEMU_ARGS+=(-device ich9-intel-hda)
QEMU_ARGS+=(-audiodev pa,id=sound0)
QEMU_ARGS+=(-device hda-output,audiodev=sound0)

exec qemu-system-x86_64 "${QEMU_ARGS[@]}"
