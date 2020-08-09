#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak/runtimes-repo.bst flatpak/extensions-repo.bst flatpak/platform/manifest.bst flatpak/sdk/manifest.bst)
TARGETS_GNOMEOS=(core.bst gnomeos/devel/manifest.bst gnomeos/build-non-images.bst oci/gnomeos/stack.bst)
TARGETS_METADATA=(sdk-metadata.bst flatpak/platform/manifest.bst flatpak/sdk/manifest.bst gnomeos/usr/manifest.bst gnomeos/devel/manifest.bst)

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
