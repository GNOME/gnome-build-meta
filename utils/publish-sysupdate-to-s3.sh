#! /bin/bash

set -ex


# Assume this happnes only on protected branches,
# which will be the stable branches,
# and their naming scheme is gnome-44, gnome-45, etc
if [ "${CI_COMMIT_BRANCH-}" != "master" ]; then
    target_dir="${CI_COMMIT_BRANCH}"
else
    target_dir="nightly"
fi

# --expires expects a ISO 8601 datetime
expire_at="$(date -I -d '15 days')"

if [ -n "${target_dir}" ] && [ -n "${IMAGE_VERSION}" ]; then
    aws s3 cp --acl public-read \
        "s3://gnome-build-meta/${target_dir}/sysupdate/" update-images/ \
        --recursive --exclude "*" --include "SHA256SUMS.version.*"

    mv update-images/SHA256SUMS "update-images/SHA256SUMS.version.${IMAGE_VERSION}"
    cat update-images/SHA256SUMS.version.* > update-images/SHA256SUMS
    gpg --homedir=files/boot-keys/private-key \
        --output "update-images/SHA256SUMS.gpg" \
        --detach-sig "update-images/SHA256SUMS"

    aws s3 sync --acl public-read \
        --expires "$expire_at" \
        update-images/ s3://gnome-build-meta/nightly/sysupdate/ \
        --exclude "*" --include "*.xz" --include "*.*hash" --include "SHA256SUMS.version.${IMAGE_VERSION}"

    # keep SHA256SUMS files at the end to minimize time for which files are not available
    aws s3 sync --acl public-read \
        --expires "$expire_at" \
        --cache-control max-age=1800 \
        update-images/ s3://gnome-build-meta/nightly/sysupdate/ \
        --exclude "*" --include "SHA256SUMS" --include "SHA256SUMS.gpg"

    if [ -n "${CI_PIPELINE_ID}" ]; then
        aws s3 cp --acl public-read image/disk.img.xz \
            --expires "$expire_at" \
            "s3://gnome-build-meta/${target_dir}/${CI_PIPELINE_ID}/disk_sysupdate_${CI_PIPELINE_ID}.img.xz"
        aws s3 cp --acl public-read iso/installer.iso \
            --expires "$expire_at" \
            "s3://gnome-build-meta/${target_dir}/${CI_PIPELINE_ID}/gnome_os_sysupdate_installer_${CI_PIPELINE_ID}.iso"
    fi
fi

aws s3 ls --recursive --human-readable s3://gnome-build-meta/
