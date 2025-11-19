#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst)
TARGETS_GNOMEOS=(core.bst gnomeos/manifest-devel.bst gnomeos/build-non-images.bst)
TARGETS_METADATA=(sdk-metadata.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst gnomeos/manifest.bst gnomeos/manifest-devel.bst)

case "${ARCH}" in
    x86_64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]} ${TARGETS_METADATA[@]})
    ;;
    aarch64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]} ${TARGETS_METADATA[@]})
    ;;
esac

: ${BST:=bst}

$BST ${ARCH_OPT} build "${TARGETS[@]}"
