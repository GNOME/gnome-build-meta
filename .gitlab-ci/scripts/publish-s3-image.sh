#! /bin/bash

set -euo pipefail


if [ "${CI_COMMIT_REF_PROTECTED:-}" = true ]; then
    if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
        aws s3 cp --acl public-read live-image/disk.iso \
            "s3://gnome-build-meta/tag/${CI_COMMIT_TAG}/gnome_os_${CI_COMMIT_TAG}-${ARCH}.iso"
    else
        aws s3 cp --acl public-read live-image/disk.iso \
            "s3://gnome-build-meta/nightly/${CI_PIPELINE_ID}/gnome_os_${CI_PIPELINE_ID}-${ARCH}.iso"
    fi
else
    aws s3 cp --acl public-read live-image/disk.iso \
        "s3://gnome-build-meta/merge_request/mr${CI_MERGE_REQUEST_IID}/gnome_os_mr_${CI_PIPELINE_ID}-${ARCH}.iso"
fi

aws s3 ls --recursive --human-readable s3://gnome-build-meta/
