BINARIES=(
    insmod
    depmod
    kmod
    lsmod
    modinfo
    modprobe
    rmmod
)

MODULES=(
    drivers/hid
    drivers/input/keyboard
    drivers/nvdimm
    drivers/gpu/drm
    drivers/md
    drivers/mmc
    fs/squashfs
    fs/overlayfs
    fs/erofs
    fs/exfat
    fs/btrfs
    drivers/nvme
    drivers/scsi
    drivers/pci/controller
    drivers/phy/qualcomm
    drivers/ufs/host
)

MODULES_BY_NAME=(
    crypto-sha256
    crypto-hmac
    crypto-xts
    crc32c
)

FILES=(
    /usr/lib/${multiarch}/libkmod.so.2
)

install() {
    for b in "${BINARIES[@]}"; do
        install_file "/usr/bin/${b}"
    done
    for f in "${FILES[@]}"; do
        install_file "${f}"
    done

    for name in ${MODULES_BY_NAME[@]}; do
        for path in $(modinfo -k "${kernelver}" -b /usr -n "${name}"); do
            case "${path}" in
                /*)
                    install_file "${path}"
                    ;;
            esac
        done
    done

    for mod in "${MODULES[@]}"; do
        if [ -d "/usr/lib/modules/${kernelver}/kernel/${mod}" ]; then
            while IFS= read -r -d '' file; do
                install_file "${file}"
            done < <(find "/usr/lib/modules/${kernelver}/kernel/${mod}" -type f -print0)
        fi
    done

    while IFS= read -r -d '' line; do
        case "${line}" in
            *.firmware=*)
                firmware="${line##*.firmware=}"
                path="/usr/lib/firmware/${firmware}.xz"
                if [ -f "${path}" ]; then
                    install_file "${path}"
                else
                    echo "Ignoring missing ${path}"
                fi
                ;;
        esac
    done <"/usr/lib/modules/${kernelver}/modules.builtin.modinfo"

    install_files "/usr/lib/modules/${kernelver}"/modules.{builtin{,.bin,.alias.bin,.modinfo},order}
}
