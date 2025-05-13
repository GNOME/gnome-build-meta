#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak-platform-extensions-extra.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst)
TARGETS_GNOMEOS=(core.bst gnomeos/manifest-devel.bst gnomeos/build-non-images.bst)

# Build the runtime with x86_64_v1 and GNOME OS with x86_64_v3
# We don't need to build gnomeos on i686
case "${ARCH}" in
    x86_64)
        if [[ "${X86_64_V3:-0}" == "1" ]]; then
            TARGETS=(${TARGETS_GNOMEOS[@]})
        else
            TARGETS=(${TARGETS_RUNTIME[@]})
        fi
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
