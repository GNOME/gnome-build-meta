#! /bin/bash

set -eu

project_name="gnome-build-meta"
# Hardcoded test version if it's not set
version=${CI_COMMIT_TAG:-48.4}

echo "Packing the tarball.."
git archive --prefix "$project_name-$version/" -o "$project_name-$version.tar" "$version"

echo "Generating News.."
python3 .gitlab-ci/scripts/write_news.py --version "$version"

echo "Appending NEWS file into the tar archive"
# tar --append --file="$project_name-$version.tar" NEWS
# --append in tar would put the file in the root directory. There is --transform but it involved regex
# It's simpler to just let git redo the archive again. Ideally we'd have a way to commit the NEWS file
# before hand.
rm "gnome-build-meta-$version.tar"
git archive --prefix "$project_name-$version/" --add-file NEWS -o "$project_name-$version.tar" "$version"

echo "Compressing archive"
xz "$project_name-$version.tar"
sha256sum "$project_name-$version.tar.xz" > "$project_name-$version.tar.xz.sha256sum"

mkdir -p public-dist
mv "$project_name-$version.tar.xz" "$project_name-$version.tar.xz.sha256sum" public-dist/
