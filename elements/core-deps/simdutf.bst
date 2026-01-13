kind: cmake

sources:
- kind: git_repo
  url: github:simdutf/simdutf.git
  track: 'v*'
  ref: v7.7.1-0-g98218fc47232b57dda64191b0204c25c09984f03

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
