#! /bin/bash

set -eux

# Assume this happens only on protected branches,
# which will be the stable branches,
# and their naming scheme is gnome-44, gnome-45, etc
if [ -n "${CI_COMMIT_BRANCH-}" ] && [ "${CI_COMMIT_BRANCH}" != "master" ]; then
    target_dir="${CI_COMMIT_BRANCH}"
else
    target_dir="nightly"
fi

aws ${AWS_ENDPOINT_URL-} s3 cp --acl public-read \
    metadata/ "s3://gnome-build-meta/${target_dir}/metadata/" \
    --recursive --exclude "*" --include "*.tar.xz"

aws ${AWS_ENDPOINT_URL-} s3 ls --recursive --human-readable "s3://gnome-build-meta/${target_dir}/metadata/"
