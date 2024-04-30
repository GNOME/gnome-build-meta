#!/bin/bash

set -eu

root="$1"
kernelver="$2"
moddir="$3"
shift 3
libdirs=()
for libdir in "$@"; do
    libdirs+=(--libdir "${libdir}")
done
shift $#

install_file_at_path() {
    if ! [ -e "${1}" ]; then
        echo "${1} does not exist" 1>&2
        return 1
    fi
    python3 /usr/libexec/generate-initramfs/copy-initramfs.py "${libdirs[@]}" "${root}" "${kernelver}" "${1}" "${2}"
}

install_file() {
    install_file_at_path "${1}" "${1}"
}

install_files() {
    for f in "$@"; do
        install_file "${f}"
    done
}

multiarch="$(gcc -print-multiarch)"

. "${moddir}/module.sh"
install
