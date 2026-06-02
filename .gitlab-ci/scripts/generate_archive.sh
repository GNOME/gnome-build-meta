#! /bin/bash

set -eu

project_name="gnome-build-meta"
# Hardcoded test version if it's not set
version=${CI_COMMIT_TAG:-$CI_COMMIT_SHORT_SHA}

echo "Creating tar archive"
git archive --prefix "$project_name-$version/" -o "$project_name-$version.tar" "$version"

echo "Compressing archive"
xz "$project_name-$version.tar"
sha256sum "$project_name-$version.tar.xz" > "$project_name-$version.tar.xz.sha256sum"

mkdir -p public-dist
mv "$project_name-$version.tar.xz" "$project_name-$version.tar.xz.sha256sum" public-dist/
