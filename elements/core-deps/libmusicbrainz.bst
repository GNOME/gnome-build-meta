kind: cmake
sources:
- kind: tar
  url: github_com:metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz
# this patch has been merged upstream and can be removed when this is updated
- kind: patch
  path: files/libmusicbrainz/cmake-ninja.patch
depends:
- core-deps/neon.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DLIB_SUFFIX="/%{gcc_triplet}"
