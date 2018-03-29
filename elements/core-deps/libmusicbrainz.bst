kind: cmake
sources:
- kind: tar
  url: github_com:metabrainz/libmusicbrainz/releases/download/release-5.1.0/libmusicbrainz-5.1.0.tar.gz
depends:
- core-deps/neon.bst
- base.bst
variables:
  cmake-local: -DLIB_SUFFIX="/%{gcc_triplet}"
