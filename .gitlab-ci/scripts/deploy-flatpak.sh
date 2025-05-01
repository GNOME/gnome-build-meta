#! /bin/bash

set -eux
set -o pipefail

TARGETS_REPO=TARGETS_${FLAT_MANAGER_REPO}
TARGETS="$TARGETS ${!TARGETS_REPO}"
echo $TARGETS

# Sanity chck where we going to push
python3 $CI_PROJECT_DIR/.gitlab-ci/scripts/publish-flatpak-gate.py

ostree init --repo repo/ --mode archive

for ARCH in $SUPPORTED_ARCHES; do
    for target in $TARGETS; do
        $BST -o arch $ARCH artifact checkout $target --directory checkout-repo/
        ostree pull-local --repo repo/ checkout-repo/
        rm -rf checkout-repo/
    done
done
ostree fsck --repo repo/ --all
flatpak build-update-repo --generate-static-deltas repo/

flat-manager-client create $FLAT_MANAGER_SERVER $FLAT_MANAGER_REPO > build.txt
flat-manager-client push $(cat build.txt) repo/
flat-manager-client commit --wait $(cat build.txt)
flat-manager-client publish --wait $(cat build.txt)
