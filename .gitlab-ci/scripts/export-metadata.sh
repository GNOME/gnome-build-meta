#! /bin/bash

set -euxo pipefail

top_dir="${CI_PROJECT_DIR:-$(pwd)}"
branch="${CI_COMMIT_BRANCH:-master}"
mkdir -p "$top_dir/metadata"

# Assume this happens only on protected branches,
# which will be the stable branches,
# and their naming scheme is gnome-44, gnome-45, etc
if [ "$branch" != "master" ]; then
    version="$branch"
else
    version="nightly"
fi

# same as .gitlab-ci/scripts/build_elements.sh
TARGETS_METADATA=(sdk-metadata.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst gnomeos/manifest.bst gnomeos/manifest-devel.bst)

: ${BST:=bst}
: ${ARCH_OPT:=}
${BST} ${ARCH_OPT} artifact pull "${TARGETS_METADATA[@]}"

${BST} ${ARCH_OPT} artifact checkout sdk-metadata.bst --compression xz --tar "$top_dir/metadata/sdk-metadata-$version.tar.xz"

${BST} ${ARCH_OPT} artifact checkout flatpak/platform-manifest.bst --directory platform-manifest
${BST} ${ARCH_OPT} artifact checkout flatpak/sdk-manifest.bst --directory sdk-manifest
${BST} ${ARCH_OPT} artifact checkout gnomeos/manifest.bst --directory gnomeos-manifest
${BST} ${ARCH_OPT} artifact checkout gnomeos/manifest-devel.bst --directory gnomeos-devel-manifest

tar --create --auto-compress \
    --file "$top_dir/metadata/manifests-$version.tar.xz" \
    --directory "$top_dir" \
    "platform-manifest/" \
    "sdk-manifest/" \
    "gnomeos-manifest/" \
    "gnomeos-devel-manifest/"
