#! /bin/bash

set -eux
set -o pipefail

echo "Preparing test media for desktop test"
if [[ -z "${S3_DISK_IMAGE_URL:-}" ]]; then
    if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/live_${CI_COMMIT_TAG}-x86_64.iso
    else
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_PIPELINE_ID}/live_${CI_PIPELINE_ID}-x86_64.iso
    fi
fi

mkdir -p /data/factory/iso
curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/iso/disk.iso
sha256sum /data/factory/iso/disk.iso
