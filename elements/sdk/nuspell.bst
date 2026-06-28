kind: cmake
sources:
- kind: git_repo
  url: github:nuspell/nuspell.git
  track: "v*.*.*"
  ref: v5.1.6-0-g9d7686de0c1656c5a3f0a33c91f0afdd6994cd5e
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
