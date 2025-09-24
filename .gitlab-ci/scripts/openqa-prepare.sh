#! /bin/bash

set -eu
set -o pipefail

echo "Preparing test media for desktop test"
if [[ -z "${S3_DISK_IMAGE_URL:-}" ]]; then
    if [ "${CI_COMMIT_REF_PROTECTED:-}" = true ]; then
        if [[ -n "${CI_COMMIT_TAG:-}" ]]; then
            S3_DISK_IMAGE_NAME="live_${CI_COMMIT_TAG}-x86_64.iso"
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_COMMIT_TAG}/${S3_DISK_IMAGE_NAME}
        else
            S3_DISK_IMAGE_NAME="live_${CI_PIPELINE_ID}-x86_64.iso"
            S3_DISK_IMAGE_URL=https://os.gnome.org/download/${CI_PIPELINE_ID}/${S3_DISK_IMAGE_NAME}
        fi
    else
        # Special uri that starts with mr$version and redirects
        # https://gitlab.gnome.org/Infrastructure/openshift-images/gnome-os-website/-/blob/master/main.py?ref_type=heads#L74
        S3_DISK_IMAGE_NAME="live_mr_${CI_PIPELINE_ID}-${ARCH}.iso"
        S3_DISK_IMAGE_URL=https://os.gnome.org/download/mr${CI_MERGE_REQUEST_IID}/${S3_DISK_IMAGE_NAME}
    fi
fi

mkdir -p /data/factory/iso
if [[ ! -z "${CI:-}" ]]; then
    cache_dir="/cache/gnome-build-meta/openqa"
    cached_image="$cache_dir/${S3_DISK_IMAGE_NAME}"
    lockfile="$cache_dir/${S3_DISK_IMAGE_NAME}.lock"
    mkdir -p $cache_dir
    ls -l $cache_dir
    touch "$lockfile"
    flock --timeout 180 "$lockfile" --command "[ ! -f \"$cached_image\" ] && \
        curl --fail --get --location \"$S3_DISK_IMAGE_URL\" --output \"$cached_image\""

    cp "$cached_image" /data/factory/iso/disk.iso

    # only keep a few isos around
    n_keep=4
    cd "$cache_dir"
    ls -t | tail -n +$n_keep | xargs -r rm --
    ls -l $cache_dir
else
    curl --fail --get --location "$S3_DISK_IMAGE_URL" --output /data/factory/iso/disk.iso
fi

sha256sum /data/factory/iso/disk.iso
