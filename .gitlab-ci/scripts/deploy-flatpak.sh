#! /bin/bash

set -eux
set -o pipefail

: ${BST:=bst}
subject="Build of the GNOME Runtime from: $(git describe HEAD)"

TARGETS_REPO=TARGETS_${FLAT_MANAGER_REPO}
TARGETS="$TARGETS ${!TARGETS_REPO}"
echo $TARGETS

# Sanity check where we going to push
python3 $CI_PROJECT_DIR/.gitlab-ci/scripts/publish-flatpak-gate.py

ostree init --repo repo/ --mode archive

for ARCH in $SUPPORTED_ARCHES; do
    for target in $TARGETS; do
        $BST -o arch $ARCH artifact checkout $target --directory checkout-repo/
        flatpak build-commit-from --subject="$subject" --disable-fsync --src-repo=checkout-repo/ repo/
        rm -rf checkout-repo/
    done
done
flatpak build-update-repo --generate-static-deltas repo/

flat-manager-client --token-file "${REPO_TOKEN_FILE}" create $FLAT_MANAGER_SERVER $FLAT_MANAGER_REPO > build.txt
flat-manager-client --token-file "${REPO_TOKEN_FILE}" push $(cat build.txt) repo/
flat-manager-client --token-file "${REPO_TOKEN_FILE}" commit --wait $(cat build.txt)
flat-manager-client --token-file "${REPO_TOKEN_FILE}" publish --wait $(cat build.txt)
