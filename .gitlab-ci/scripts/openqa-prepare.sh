#! /bin/bash

set -eu
set -o pipefail

echo "Preparing test media for desktop test"
# These urls are mirrored from the upload endpinds we use in publish-s3-image.sh
if [[ -z "${S3_DISK_IMAGE_URL:-}" ]]; then
    if [ "${CI_COMMIT_REF_PROTECTED:-}" = true ]; then
        if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/gnome_os_${CI_COMMIT_TAG}-${ARCH}.iso
        else
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${IMAGE_VERSION}/gnome_os_${IMAGE_VERSION}-${ARCH}.iso
        fi
    else
        # Special uri that starts with mr$version and redirects
        # https://gitlab.gnome.org/Infrastructure/openshift-images/gnome-os-website/-/blob/master/main.py?ref_type=heads#L74
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/mr${CI_MERGE_REQUEST_IID}/gnome_os_mr_${IMAGE_VERSION}-${CI_PIPELINE_ID}-${ARCH}.iso
    fi
fi

mkdir -p /data/factory/iso

echo "Downloading image from: $S3_DISK_IMAGE_URL"
curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/iso/disk.iso

sha256sum /data/factory/iso/disk.iso
