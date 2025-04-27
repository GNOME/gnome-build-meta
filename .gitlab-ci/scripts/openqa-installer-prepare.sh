#! /bin/bash

set -eux
set -o pipefail

echo "Preparing test media for installer test"
if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
    S3_ISO_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/gnome_os_installer_${CI_COMMIT_TAG}.iso
else
    S3_ISO_IMAGE_URL=https://os.gnome.org/download/${CI_PIPELINE_ID}/gnome_os_installer_${CI_PIPELINE_ID}.iso
fi

mkdir -p /data/factory/iso
curl --fail --get --location "$S3_ISO_IMAGE_URL" --output /data/factory/iso/installer.iso
sha256sum /data/factory/iso/installer.iso
