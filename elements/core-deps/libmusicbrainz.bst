kind: cmake
sources:
- kind: tar
  url: github_com:metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz
# this patch has been merged upstream and can be removed when this is updated
  ref: 6749259e89bbb273f3f5ad7acdffb7c47a2cf8fcaeab4c4695484cef5f4c6b46
- kind: patch
  path: files/libmusicbrainz/cmake-ninja.patch
depends:
- core-deps/neon.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: >-
    -DLIB_SUFFIX="/%{gcc_triplet}"
