kind: cmake
sources:
- kind: tar
  url: github_files:nuspell/nuspell/archive/refs/tags/v5.1.4.tar.gz
  ref: bdf344c5adbcc6797940f8f8cb75cb59f5a3794eb21b9547751a11782a792ef7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnuspell.so'
