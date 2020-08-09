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
        "s3://gnome-build-meta/${target_dir}/metadata/" metadata/ \
        --recursive --exclude "*" --include "*.tar.xz"
fi

aws $AWS_ENDPOINT_URL s3 ls --recursive --human-readable "s3://gnome-build-meta/${target_dir}/metadata/"
