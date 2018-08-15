depends:
- core-deps/neon.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: cmake
sources:
- kind: tar
  ref: 6749259e89bbb273f3f5ad7acdffb7c47a2cf8fcaeab4c4695484cef5f4c6b46
  url: github_com:metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz
- kind: patch
  path: files/libmusicbrainz/cmake-ninja.patch
variables:
  cmake-local: -DLIB_SUFFIX="/%{gcc_triplet}"
