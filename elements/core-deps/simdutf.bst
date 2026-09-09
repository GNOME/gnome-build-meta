kind: cmake

sources:
- kind: git_repo
  url: github:simdutf/simdutf.git
  track: 'v*'
  ref: v9.1.1-0-g9dd35adc5f2c87a53c5a0e6e5b43af6fffe7187e

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
