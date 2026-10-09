#! /bin/bash

set -eu
set -o pipefail

if [ "${CI_COMMIT_BRANCH-}" = master ]; then
    version_num=$(TZ=UTC git log --format="%cd" --date="format-local:%Y%m%d" | uniq -c | (head -n1 && cat >/dev/null) | awk '{print ($2"."($1-1))}')
    IMAGE_VERSION="nightly.$version_num"
elif [ "${CI_COMMIT_REF_PROTECTED-}" = true ]; then
    IMAGE_VERSION=$(git describe | cut -d - -f 1-2)
else
    target="${CI_MERGE_REQUEST_TARGET_BRANCH_NAME-unknown}"
    if [ "${target}" = master ]; then
        target=nightly
    fi
    IMAGE_VERSION=$(echo "${target}-branch" | sed "s/-/_/g")
fi

# The longest GPT label is of shape "gnomeos_usr_v_%A".
# The longest possible label is 36. So the longest version is 22.
if [ "${#IMAGE_VERSION}" -gt 22 ]; then
    echo "Version is too long" 1>&2
    exit 1
fi
export IMAGE_VERSION
