kind: cmake
sources:
- kind: tar
  url: https://github.com/nuspell/nuspell/archive/refs/tags/v5.0.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnuspell.so'
