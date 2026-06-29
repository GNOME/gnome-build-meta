kind: cmake
sources:
- kind: git_repo
  url: github:nuspell/nuspell.git
  track: "v*.*.*"
  ref: v5.1.7-0-g6d84c501354751af3960fd89fa6bff6c27c8266e
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
