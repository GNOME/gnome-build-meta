kind: cmake
sources:
- kind: git_repo
  url: github:nuspell/nuspell.git
  track: "v*.*.*"
  ref: v5.1.8-0-g59257e7dc7e2f3b4a969dc7d171b5134055caa9f
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst
depends:
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  cmake-local: >-
    -DBUILD_DOCS=OFF
    -DBUILD_TESTING=OFF
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libnuspell.so'
