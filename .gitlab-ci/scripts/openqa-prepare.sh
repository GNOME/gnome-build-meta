#! /bin/bash

set -eu
set -o pipefail

echo "Preparing test media for desktop test"
# These urls are mirrored from the upload endpinds we use in publish-s3-image.sh
if [[ -z "${S3_DISK_IMAGE_URL:-}" ]]; then
    if [ "${CI_COMMIT_REF_PROTECTED:-}" = true ]; then
        if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/gnome_os_${CI_COMMIT_TAG}-x86_64.iso
        else
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${version}/gnome_os_${version}-${ARCH}.iso
        fi
    else
        # Special uri that starts with mr$version and redirects
        # https://gitlab.gnome.org/Infrastructure/openshift-images/gnome-os-website/-/blob/master/main.py?ref_type=heads#L74
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/mr${CI_MERGE_REQUEST_IID}/gnome_os_mr_${version}-${ARCH}.iso
    fi
fi

mkdir -p /data/factory/iso

echo "Downloading image from: $S3_DISK_IMAGE_URL"
curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/iso/disk.iso

sha256sum /data/factory/iso/disk.iso
