#! /bin/bash

set -e
set -o pipefail

# Setup certificate for pushing to the cache
echo "$CASD_CLIENT_CERT" > client.crt
echo "$CASD_CLIENT_KEY" > client.key

set -x

# Ensure the log directory exists
mkdir -p logs

# Setup certificates and image version for sysupdate
if [ "${CI_COMMIT_REF_PROTECTED-}" != true ] || [ "${CI_PIPELINE_SOURCE-}" = "schedule" ]; then
    make -C files/boot-keys generate-keys IMPORT_MODE=snakeoil
    export PUSH_SOURCE=1
else
    make -C files/boot-keys generate-keys IMPORT_MODE=import
fi

./.gitlab-ci/scripts/generate-buildtream-conf.sh nopush >.gitlab-ci/buildstream-nopush.conf
./.gitlab-ci/scripts/generate-buildtream-conf.sh >.gitlab-ci/buildstream.conf

build_num="${CI_PIPELINE_ID}"
if [ "${CI_COMMIT_BRANCH-}" = master ]; then
    IMAGE_VERSION="nightly.$build_num"
elif [ "${CI_COMMIT_REF_PROTECTED-}" = true ]; then
    # Assume this will always be a stable branch string like "gnome-44"
    IMAGE_VERSION=$(echo "${CI_COMMIT_REF_SLUG}.$build_num" | sed "s/-/_/g")
else
    target="${CI_MERGE_REQUEST_TARGET_BRANCH_NAME-unknown}"
    if [ "${target}" = master ]; then
        target=nightly
    fi
    IMAGE_VERSION=$(echo "${target}-branch" | sed "s/-/_/g")
fi

# The longest GPT label is of shape "gnomeos_usr_XXXX_v_%A" where
# XXXX is the layer name. The longest layer name is 4. The longest
# possible label is 36. So the longest version is 17.
if [ "${#IMAGE_VERSION}" -gt 17 ]; then
    echo "Version is too long" 1>&2
    exit 1
fi

echo "image-version: ${IMAGE_VERSION}" > include/image-version.yml
export IMAGE_VERSION

commit_time=$(git log -1 --format=format:%ct "${CI_MERGE_REQUEST_DIFF_BASE_SHA-HEAD}")
echo "filesystem-time: ${commit_time}" >> include/image-version.yml

cat include/image-version.yml
