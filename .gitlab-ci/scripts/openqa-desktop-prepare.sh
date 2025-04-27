#! /bin/bash

set -eux
set -o pipefail

echo "Preparing test media for desktop test"
if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
    S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/disk_${CI_COMMIT_TAG}-x86_64.img.xz
else
    S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_PIPELINE_ID}/disk_${CI_PIPELINE_ID}-x86_64.img.xz
fi

mkdir -p /data/factory/hdd
curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/hdd/disk.img.xz
unxz /data/factory/hdd/disk.img.xz
sha256sum /data/factory/hdd/disk.img
disk_size_gb=15
dd if=/dev/zero of=/data/factory/hdd/disk.img seek=$disk_size_gb obs=1GB count=0
