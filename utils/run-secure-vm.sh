#!/bin/bash

set -eu

args=()
cmdline=()
TYPE11=()

print_help() {
    cat <<EOF
Usage: $@ [OPTIONS] [--] [ELEMENT]
Run GNOME OS image under qemu-system with secure boot and TPM.

You can optionally set the BuildStream element to be built and run.
The default element will be gnomeos/live-image.bst.

A 50G primary disk will be used and initialized to be empty.

A secondary disk will be initialized with the data of the BuildStream
element.

Successive calls of this script will not remove data unless a --reset*
option is used.

Options:
  --help                     Print this help message.

  --pre-install              Convert the ISO to installed disk.
                             (implies --no-install)

  --image FILE               Use a preinstalled image

  --no-install               Do not attach secondary drive with installation
                             medium.

  --live-cdrom               Attach the secondary disk as a CD-ROM.

  --rebuild-iso              Force re-initializing installation disk.

  --reset-installed          Clear the primary disk.

  --reset-secure-state       Clear TPM and UEFI firmware state.

  --buildid NNNNN            Instead of building the element locally, download
                             the image from CI. The ID is the pipeline number.
                             OVMF will still need to be built locally.

  --notpm                    Do not use TPM.

  --serial                   Connect the console to the VM serial port.
                             Exit with C-x a.

  --cmdline CMD              Add a kernel command line option. You can use
                             this multiple times. For example:
                             --cmdline systemd.debug_shell=1 --cmdline
                             systemd.journald.forward_to_journal=1

  --debug-glib               Enable debug logs for GLib

  --debug-systemd            Enable debug logs for systemd

  --local-updates            Configure sysupdate to download from local
                             repository provided by run-sysupdate-repo.sh.

  --spice-app                Run a spice app.

  --home-disk PATH           Also mount home disk as an image file

  --home-disk-key PATH       Use public key for signing home disk. By default,
                             it will take the local signing key.

  --no-systemd               Do not use systemd to manage swtpm. This is useful
                             when running in an OCI container.

EOF
}

live=disk

while [ $# -gt 0 ]; do
    case "$1" in
        --help)
            print_help
            exit 0
            ;;
        --live-cdrom)
            live=cdrom
            ;;
        --no-install)
            unset live
            ;;
        --pre-install)
            unset live
            pre_install=1
            ;;
        --reset-installed)
            reset_installed=1
            ;;
        --rebuild-iso)
            rebuild_iso=1
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
        --debug-glib)
            debug_glib=1
            ;;
        --debug-systemd)
            cmdline+=("systemd.log_level=debug")
            ;;
        --local-updates)
            local_updates=1
            ;;
        --spice-app)
            spice_app=1
            ;;
        --home-disk)
            shift
            home_disk="$1"
            ;;
        --home-disk-key)
            shift
            home_disk_key="$1"
            ;;
        --image)
            shift
            unset live
            from_image="$1"
            ;;
        --no-systemd)
            nosystemd=1
            ;;
        --)
            shift
            args+=("$@")
            break
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
: ${VM_NAME:="${PWD}"}
: ${GUEST_CID:=777}

: ${IMAGE_ELEMENT:="gnomeos/live-image.bst"}

if [ "${TOOLBOX_PATH+set}" = set ] || [ "${DISTROBOX_ENTER_PATH+set}" = set ]; then
    nosystemd=1
fi

BST_OPTIONS=(-o arch ${ARCH})

if [ "${#args[@]}" -ge 1 ]; then
    IMAGE_ELEMENT="${args[0]}"
fi
if [ "${#args[@]}" -ge 2 ]; then
    echo "Too many parameters" 1>&2
    exit 1
fi

if [ "${buildid+set}" = set ]; then
    mkdir -p "${STATE_DIR}/builds"
    if ! [ -f "${STATE_DIR}/builds/gnome_os_${buildid}.iso" ]; then
        wget "https://1270333429.rsc.cdn77.org/nightly/${buildid}/gnome_os_${buildid}-${ARCH}.iso" -O "${STATE_DIR}/builds/gnome_os_${buildid}.iso.tmp"
        mv "${STATE_DIR}/builds/gnome_os_${buildid}.iso.tmp" "${STATE_DIR}/builds/gnome_os_${buildid}.iso"
    fi
fi

start_swtpm_systemd() {
    unit="${SWTPM_UNIT}"

    if systemctl --user -q is-active "${unit}"; then
        systemctl --user stop "${unit}"
    fi
    if systemctl --user -q is-failed "${unit}"; then
        systemctl --user reset-failed "${unit}"
    fi

    shift
    systemd-run --user --service-type=simple --unit="${unit}" -- "${@}"
}

start_swtpm_daemon() {
    pidfile="${STATE_DIR}/swtpm.pid"

    if [ -r "${pidfile}" ]; then
        pkill -F "${pidfile}" --logpidfile || true
    fi
    "${@}" --pid file="${pidfile}" --daemon
}

start_swtpm() {
    if [ "${nosystemd+set}" = set ]; then
        start_swtpm_daemon "${@}"
    else
        start_swtpm_systemd "${@}"
    fi
}

if ! [ "${no_tpm+set}" = set ]; then
    if [ "${reset_secure+set}" = set ] ; then
        rm -rf "${SWTPM_STATE}"
    fi
    mkdir -p "${SWTPM_STATE}"

    if [ "${nosystemd+set}" = set ]; then
        TPM_SOCK="${STATE_DIR}/swtpm.sock"
    else
        TPM_SOCK="${XDG_RUNTIME_DIR}/${SWTPM_UNIT}/sock"
        mkdir -p "$(dirname "${TPM_SOCK}")"
    fi
    start_swtpm swtpm socket --tpm2 --tpmstate dir="${SWTPM_STATE}" --ctrl type=unixio,path="${TPM_SOCK}"
fi

cleanup_dirs=()
cleanup() {
    if [ "${#cleanup_dirs[@]}" -gt 0 ]; then
        rm -rf "${cleanup_dirs[@]}"
    fi
}
trap cleanup EXIT INT

if [ "${rebuild_iso+set}" = set ] || (! [ -f "${STATE_DIR}/disk.iso" ] && [ "${live+set}" = set ]); then
    mkdir -p "${STATE_DIR}"
    checkout="$(mktemp -d --tmpdir="${STATE_DIR}" checkout.XXXXXXXXXX)"
    cleanup_dirs+=("${checkout}")

    if [ "${buildid+set}" = set ]; then
        cp "${STATE_DIR}/builds/gnome_os_${buildid}.iso" "${checkout}/disk.iso"
    else
        make -C files/boot-keys generate-keys
        "${BST}" "${BST_OPTIONS[@]}" build "${IMAGE_ELEMENT}"
        "${BST}" "${BST_OPTIONS[@]}" artifact checkout "${IMAGE_ELEMENT}" --directory "${checkout}"
    fi
    mv "${checkout}/disk.iso" "${STATE_DIR}/disk.iso"
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

readonly=off
if [ "${live-}" = cdrom ]; then
    readonly=on
fi

if [ "${reset_installed+set}" = set ]; then
    rm -f "${STATE_DIR}/disk.img"
fi

if [ "${live+set}" = set ]; then
     QEMU_ARGS+=(-drive "if=none,id=live-disk,file=${STATE_DIR}/disk.iso,media=${live-disk},format=raw,readonly=${readonly}")
    if [ "${live}" = disk ]; then
        QEMU_ARGS+=(-device "virtio-blk-pci,drive=live-disk,bootindex=2")
    elif [ "${live}" = cdrom ]; then
        QEMU_ARGS+=(-device "virtio-scsi-pci,id=scsi")
        QEMU_ARGS+=(-device "scsi-cd,drive=live-disk,bootindex=2")
    fi
elif [ "${pre_install+set}" = set ]; then
    definitions="$(dirname ${0})/repart.raw.d"
    truncate --size 50G "${STATE_DIR}/disk.img"
    run0 -- systemd-repart --dry-run=no --image="${STATE_DIR}/disk.iso" --definitions="${definitions}" --empty=force --size=auto "${STATE_DIR}/disk.img"
elif [ "${from_image+set}" = set ]; then
    cp "${from_image}" "${STATE_DIR}/disk.img"
fi

truncate --size 50G "${STATE_DIR}/disk.img"

if [ "${home_disk+set}" = set ]; then
    QEMU_ARGS+=(-drive "if=none,id=home-disk,file=${home_disk},media=disk,format=raw,discard=on")
    QEMU_ARGS+=(-device "virtio-blk-pci,drive=home-disk")

    if [ "${home_disk_key+set}" ]; then
        TYPE11+=("value=io.systemd.credential.binary:home.add-signing-key.host.public=$(base64 -w0 <"${home_disk_key}")")
    else
        TYPE11+=("value=io.systemd.credential.binary:home.add-signing-key.host.public=$(homectl get-signing-key | base64 -w0)")
    fi

    cmdline+=("gnome.initial-setup=0")
fi

if [ "${serial+set}" = set ]; then
    QEMU_ARGS+=(-serial stdio)
fi

QEMU_ARGS+=(-name "${VM_NAME}")

QEMU_ARGS+=(-device virtio-vga-gl)
if [ "${spice_app+set}" = set ]; then
    QEMU_ARGS+=(-display spice-app,gl=on)
    QEMU_ARGS+=(-device virtio-serial-pci
                -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0
                -chardev spicevmc,id=spicechannel0,name=vdagent)
else
    QEMU_ARGS+=(-display gtk,gl=on)
fi

QEMU_ARGS+=(-device ich9-intel-hda)
QEMU_ARGS+=(-audiodev pa,id=sound0)
QEMU_ARGS+=(-device hda-output,audiodev=sound0)

QEMU_ARGS+=(-device vhost-vsock-pci,id=vhost-vsock-pci0,guest-cid="${GUEST_CID}")
# We need to start sshd to create host keys
cmdline+=("systemd.wants=sshd.service")

if [ ${#cmdline[@]} -gt 0 ]; then
    TYPE11+=("value=io.systemd.stub.kernel-cmdline-extra=${cmdline[*]//,/,,}")
fi

tmpfiles_extra=()

tmpfiles="$(mktemp -d --tmpdir="${STATE_DIR}" tmpfiles.XXXXXXXXXX)"
cleanup_dirs+=("${tmpfiles}")

if [ "${local_updates+set}" = set ]; then
    cat <<EOF >"${tmpfiles}"/tmpfiles-import-pubring.conf
f~ /etc/systemd/import-pubring.pgp 0644 root root - $(base64 -w0 files/boot-keys/import-pubring.pgp)
EOF

    tmpfiles_extra+=("${tmpfiles}"/tmpfiles-import-pubring.conf)

    cat <<EOF >"${tmpfiles}"/local.conf
[Source]
Path=http://10.0.2.2:8080
EOF

    for t in files/sysupdate/*.transfer; do
        transfer="$(basename "${t}")"
        cat <<EOF >"${tmpfiles}"/tmpfiles-local-transfer-"${transfer}".conf
f~ /etc/sysupdate.d/${transfer}.d/local.conf 0644 root root - $(base64 -w0 "${tmpfiles}"/local.conf)
EOF
        tmpfiles_extra+=("${tmpfiles}"/tmpfiles-local-transfer-"${transfer}".conf)
   done

fi

if [ "${debug_glib+set}" = set ]; then
    cat <<EOF >"${tmpfiles}"/glib-debug.conf
[Manager]
DefaultEnvironment=G_MESSAGES_DEBUG=all
EOF

    cat <<EOF >"${tmpfiles}"/tmpfiles-glib-debug.conf
f~ /run/systemd/system.conf.d/glib-debug.conf 0644 root root - $(base64 -w0 "${tmpfiles}"/glib-debug.conf)
f~ /run/systemd/user.conf.d/glib-debug.conf 0644 root root - $(base64 -w0 "${tmpfiles}"/glib-debug.conf)
EOF

    tmpfiles_extra+=("${tmpfiles}"/tmpfiles-glib-debug.conf)
fi

if [ ${#tmpfiles_extra[@]} -gt 0 ]; then
    TYPE11+=("value=io.systemd.credential.binary:tmpfiles.extra=$(cat "${tmpfiles_extra[@]}" | base64 -w0)")
fi

tmpfiles="$(mktemp -d --tmpdir="${STATE_DIR}" tmpfiles.XXXXXXXXXX)"
cleanup_dirs+=("${tmpfiles}")

if ! [ -r ssh/ephemeral.pub ] || ! [ -r ssh/ephemeral ]; then
    rm -rf ssh
    (umask 0077 &&
         mkdir -p ssh &&
         ssh-keygen -t ed25519 -f ssh/ephemeral -N '')
    cat ssh/ephemeral.pub
fi

TYPE11+=("value=io.systemd.credential.binary:ssh.ephemeral-authorized_keys-all=$(base64 -w0 <ssh/ephemeral.pub)")

cat <<EOF
When the machine is started, you may connect using:

ssh -i ssh/ephemeral root@vsock/${GUEST_CID}

EOF

if [ ${#TYPE11[@]} -gt 0 ]; then
    TYPE11ALL="$(IFS=,; echo "${TYPE11[*]}")"
    QEMU_ARGS+=(-smbios "type=11,${TYPE11ALL}")
fi

cleanup

exec qemu-system-x86_64 "${QEMU_ARGS[@]}"
