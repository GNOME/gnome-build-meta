#! /bin/bash

set -ex


# Assume this happens only on protected branches,
# which will be the stable branches,
# and their naming scheme is gnome-44, gnome-45, etc
if [ "${CI_COMMIT_BRANCH-}" != "master" ]; then
    target_dir="${CI_COMMIT_BRANCH}"
else
    target_dir="nightly"
fi

if [ -n "${target_dir}" ] && [ -n "${IMAGE_VERSION}" ]; then
    aws $AWS_ENDPOINT_URL s3 cp --acl public-read \
        "s3://gnome-build-meta/${target_dir}/sysupdate/" update-images/ \
        --recursive --exclude "*" --include "SHA256SUMS.version.*"

    mv update-images/SHA256SUMS "update-images/SHA256SUMS.version.${IMAGE_VERSION}-${ARCH}"
    cat update-images/SHA256SUMS.version.* > update-images/SHA256SUMS
    gpg --homedir=files/boot-keys/private-key \
        --output "update-images/SHA256SUMS.gpg" \
        --detach-sig "update-images/SHA256SUMS"

    aws $AWS_ENDPOINT_URL s3 sync --acl public-read \
        update-images/ "s3://gnome-build-meta/$target_dir/sysupdate/" \
        --exclude "*" --include "*.xz" --include "*.*hash" --include "SHA256SUMS.version.${IMAGE_VERSION}-${ARCH}"

    # keep SHA256SUMS files at the end to minimize time for which files are not available
    aws $AWS_ENDPOINT_URL s3 sync --acl public-read \
        --cache-control max-age=1800 \
        update-images/ "s3://gnome-build-meta/$target_dir/sysupdate/" \
        --exclude "*" --include "SHA256SUMS" --include "SHA256SUMS.gpg"
fi

aws $AWS_ENDPOINT_URL s3 ls --recursive --human-readable s3://gnome-build-meta/
