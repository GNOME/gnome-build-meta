#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst)
TARGETS_GNOMEOS=(core.bst gnomeos/manifest-devel.bst gnomeos/build-non-images.bst)

case "${ARCH}" in
    x86_64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]})
    ;;
    aarch64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]})
    ;;
esac

: ${BST:=bst}

$BST ${ARCH_OPT} build "${TARGETS[@]}"
