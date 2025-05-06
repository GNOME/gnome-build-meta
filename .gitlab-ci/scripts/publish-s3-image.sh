#! /bin/bash

set -euox pipefail

${BST_NO_PUSH} --max-jobs $(( $(nproc) / 4 )) ${ARCH_OPT} build gnomeos/live-image.bst
${BST} ${ARCH_OPT} artifact checkout --hardlinks gnomeos/live-image.bst --directory live-image

if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
    aws s3 cp --acl public-read live-image/disk.iso \
        "s3://gnome-build-meta/tag/${CI_COMMIT_TAG}/live_${CI_COMMIT_TAG}-${ARCH}.iso"
else
    aws s3 cp --acl public-read live-image/disk.iso \
        "s3://gnome-build-meta/nightly/${CI_PIPELINE_ID}/live_${CI_PIPELINE_ID}-${ARCH}.iso"
fi

aws s3 ls --recursive --human-readable s3://gnome-build-meta/
