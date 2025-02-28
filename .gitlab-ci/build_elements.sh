#! /bin/bash

set -euxo pipefail

TARGETS=(core.bst flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak-platform-extensions-extra.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst vm/manifest-devel.bst vm-secure/manifest-devel.bst)

case "${ARCH}" in
    aarch64)
        TARGETS+=(vm/filesystem.bst vm/filesystem-devel.bst)
    ;;
    x86_64)
        TARGETS+=(vm/repo.bst vm/repo-devel.bst)
    ;;
    i686)
        TARGETS=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak-platform-extensions-extra.bst)
    ;;
esac

case "${ARCH}" in
    aarch64|x86_64)
        TARGETS+=(vm-secure/build-non-images.bst)
    ;;
esac

: ${BST:=bst}
$BST --max-jobs $(( $(nproc) / 4 )) -o arch "${ARCH}" build "${TARGETS[@]}"
