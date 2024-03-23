#! /bin/bash

set -euxo pipefail

TARGETS_RUNTIME=(flatpak-runtimes.bst flatpak-platform-extensions.bst flatpak-platform-extensions-extra.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst)
TARGETS_GNOMEOS=(core.bst vm/manifest-devel.bst vm-secure/manifest-devel.bst vm-secure/build-non-images.bst)

case "${ARCH}" in
    aarch64)
        TARGETS_GNOMEOS+=(vm/filesystem.bst vm/filesystem-devel.bst)
    ;;
    x86_64)
        TARGETS_GNOMEOS+=(vm/repo.bst vm/repo-devel.bst oci/platform.bst oci/sdk.bst oci/core.bst)
    ;;
    i686)
    ;;
esac

case "${ARCH}" in
    x86_64)
        ARCH_OPT=(-o x86_64_v3 true -o arch ${ARCH})
    ;;
    *)
        ARCH_OPT=(-o arch ${ARCH})
    ;;
esac

: ${BST:=bst}
# Build the runtime with x86_64_v1 and GNOME OS with x86_64_v3
# We don't need to build gnomeos on i686
case "${ARCH}" in
    aarch64|x86_64)
        $BST --max-jobs $(( $(nproc) / 4 )) "${ARCH_OPT[@]}" build "${TARGETS_GNOMEOS[@]}"
    ;;
esac
$BST --max-jobs $(( $(nproc) / 4 )) -o arch "${ARCH}" build "${TARGETS_RUNTIME[@]}"
