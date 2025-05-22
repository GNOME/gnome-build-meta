#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak-platform-extensions-extra.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst)
TARGETS_GNOMEOS=(core.bst gnomeos/manifest-devel.bst gnomeos/build-non-images.bst)

# We don't need to build gnomeos on i686
case "${ARCH}" in
    x86_64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]})
    ;;
    i686)
        TARGETS=(${TARGETS_RUNTIME[@]})
    ;;
    aarch64)
        TARGETS=(${TARGETS_RUNTIME[@]} ${TARGETS_GNOMEOS[@]})
    ;;
esac

: ${BST:=bst}

$BST ${ARCH_OPT} build "${TARGETS[@]}"
