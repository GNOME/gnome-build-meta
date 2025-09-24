#! /bin/bash

set -eux
set -o pipefail

echo "Preparing test media for desktop test"
if [[ -z "${S3_DISK_IMAGE_URL:-}" ]]; then
    if [ "${CI_COMMIT_REF_PROTECTED-}" = true ]; then
        if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
            DISK_IMAGE_NAME="live_${CI_COMMIT_TAG}-x86_64.iso"
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/${DISK_IMAGE_NAME}
        else
            DISK_IMAGE_NAME="live_${CI_PIPELINE_ID}-x86_64.iso"
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_PIPELINE_ID}/${DISK_IMAGE_NAME}
        fi
    else
        # Special uri that starts with mr$version and redirects
        # https://gitlab.gnome.org/Infrastructure/openshift-images/gnome-os-website/-/blob/master/main.py?ref_type=heads#L74
        DISK_IMAGE_NAME="live_mr_${CI_PIPELINE_ID}-${ARCH}.iso"
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/mr${CI_MERGE_REQUEST_IID}/${DISK_IMAGE_NAME}
    fi
fi

mkdir -p /data/factory/iso
if [[ ! -z "${CI:-}" ]]; then
    cache_dir="/cache/gnome-build-meta/openqa"
    mkdir -p $cache_dir
    ls -l $cache_dir
    if [ ! -f "$cache_dir/${DISK_IMAGE_NAME}" ]; then
        # FIXME: grab a lock so we won't race with other jobs
        curl --fail --get --location "$S3_DISK_IMAGE_URL" --output $cache_dir/${DISK_IMAGE_NAME} 
    fi

    cp $cache_dir/${DISK_IMAGE_NAME} /data/factory/iso/disk.iso

    # only keep a few isos around
    n_keep=6
    cd "$cache_dir"
    ls -t | tail -n +$n_keep | xargs -r rm --
    ls -l $cache_dir
else
    curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/iso/disk.iso
fi

mkdir -p /data/factory/iso
sha256sum /data/factory/iso/disk.iso
