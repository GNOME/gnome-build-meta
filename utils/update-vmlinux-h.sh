#!/bin/bash

set -eu

tmp=$(mktemp --tmpdir -d "vmlinuxh.XXXXXXXXXX")
cleanup() {
    rm -rf "${tmp}"
}
trap cleanup EXIT INT

make -C files/boot-keys/ IMPORT_MODE=snakeoil
bst build freedesktop-sdk.bst:components/vmlinuxh.bst
bst artifact checkout freedesktop-sdk.bst:components/vmlinuxh.bst --directory "${tmp}"
mv "${tmp}"/usr/include/* files/vmlinuxh/
