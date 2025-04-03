#! /bin/bash

set -eu

image_tag=$1

upstream_registry="registry.gitlab.com/freedesktop-sdk/infrastructure/freedesktop-sdk-docker-images"
upstream_image="${upstream_registry}/bst2:${image_tag}"

our_registry="${OCI_REGISTRY:-quay.io}"
user="${OCI_REGISTRY_USER:-gnome_infrastructure+gnome_build_meta}"

our_image_name="${OCI_IMAGE_NAME:-quay.io/gnome_infrastructure/gnome-build-meta}"
our_image="$our_image_name:fdsdk-bst2-${image_tag}"
our_user="${OCI_REGISTRY_USER-=gnome_infrastructure+gnome_build_meta}"

skopeo inspect --no-tags --retry-times 3 docker://$our_image | jq '[.Digest, .Layers]' > local_sha
skopeo inspect --no-tags --retry-times 3 docker://$upstream_image | jq '[.Digest, .Layers]' > upstream_sha

if [[ ! -s upstream_sha ]]
then
    echo "Upstream image does not exist. Please double check."
    echo "skopeo inspect $upstream_image"
    exit 1
fi

if ! diff -u upstream_sha local_sha
then
    if [[ -z "$OCI_REGISTRY_PASSWORD" ]] || [[ "${CI_COMMIT_REF_PROTECTED-}" != true ]]; then
        echo "Missing required credentials, can't publish"
        exit 1
    fi

    echo "Copying image $upstream_image"
    skopeo login -u "$our_user" -p "${OCI_REGISTRY_PASSWORD}" "$our_registry"
    skopeo copy \
        --preserve-digests \
        --multi-arch all \
        --retry-times 3 \
        --dest-creds "$our_user:${OCI_REGISTRY_PASSWORD}" \
        "docker://$upstream_image" \
        "docker://$our_image"
else
    echo "Images match! 🥳"
fi

rm --verbose upstream_sha local_sha
