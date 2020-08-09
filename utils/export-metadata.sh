#! /bin/bash

set -euxo pipefail

top_dir="${CI_PROJECT_DIR:-$(pwd)}"
mkdir -p "$top_dir/metadata"

if [ "${CI_COMMIT_BRANCH:-master}" == "${CI_DEFAULT_BRANCH:-master}" ]; then
    version="nightly"
else
    version="${CI_COMMIT_BRANCH}"
fi

# same as .gitlab-ci/build-elements.sh
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

tar --create --auto-compress --file "$top_dir/metadata/manifests-$version.tar.xz" \
    "$top_dir/platform-manifest/" \
    "$top_dir/sdk-manifest/" \
    "$top_dir/gnomeos-manifest/" \
    "$top_dir/gnomeos-devel-manifest/"
