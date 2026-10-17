#! /bin/bash

set -euo pipefail

update_stable() {
    branch="$(echo "${CI_COMMIT_TAG:-}" | cut -d . -f 1)"
    echo "Updating stable symlink to: $s3_path"
    echo "$s3_path" > "stable-$branch-${ARCH}-iso"
    aws s3 cp --acl public-read "stable-$branch-${ARCH}-iso" "s3://gnome-build-meta/stable-$branch-${ARCH}-iso"
}

update_nightly() {
    echo "Updating nightly symlink to: $s3_path"
    echo "$s3_path" > "latest-${ARCH}-live"
    aws s3 cp --acl public-read "latest-${ARCH}-live" "s3://gnome-build-meta/latest-${ARCH}-live"
}

upload_iso () {
    echo "Uploading iso to: $s3_path"
    aws s3 cp --acl public-read live-image/disk.iso "s3://gnome-build-meta/$s3_path"
}

if [ -n "${CI_MERGE_REQUEST_IID:-}" ]; then
    s3_path="merge_request/mr${CI_MERGE_REQUEST_IID}/gnome_os_mr_${IMAGE_VERSION}-${CI_PIPELINE_ID}-${ARCH}.iso"
    upload_iso
elif [ -n "${CI_COMMIT_TAG:-}" ]; then
    s3_path="tag/${CI_COMMIT_TAG}/gnome_os_${CI_COMMIT_TAG}-${ARCH}.iso"
    upload_iso
    # Update latest stable symlink
    update_stable
elif [ "${CI_COMMIT_REF_PROTECTED:-}" == true ]; then
    s3_path="iso/${IMAGE_VERSION}/gnome_os_${IMAGE_VERSION}-${ARCH}.iso"
    upload_iso

    # Update the latest symlink for nightly
    # For stable, we only update the symlink on tags
    if [ -n "${CI_COMMIT_REF_NAME:-}" ] && [ "${CI_COMMIT_REF_NAME:-}" == "${CI_DEFAULT_BRANCH:-}" ]; then
        update_nightly
    fi
fi

aws s3 ls --recursive --human-readable s3://gnome-build-meta/
