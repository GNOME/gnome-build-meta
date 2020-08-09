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

# same as .gitlab-ci/scripts/build-elements.sh
TARGETS_METADATA=(export-sdk-gir.bst export-sdk-docs.bst flatpak/platform-manifest.bst flatpak/sdk-manifest.bst gnomeos/manifest.bst gnomeos/manifest-devel.bst)

: ${BST:=bst}
${BST} ${ARCH_OPT} artifact pull "${TARGETS_METADATA[@]}"

${BST} ${ARCH_OPT} artifact checkout export-sdk-gir.bst --directory sdk-girs
${BST} ${ARCH_OPT} artifact checkout export-sdk-docs.bst --directory sdk-docs

tar --create --auto-compress --file "$top_dir/metadata/sdk-girs-$version.tar.xz" --directory "$top_dir/sdk-girs" .
tar --create --auto-compress --file "$top_dir/metadata/sdk-docs-$version.tar.xz" --directory "$top_dir/sdk-docs" .

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
