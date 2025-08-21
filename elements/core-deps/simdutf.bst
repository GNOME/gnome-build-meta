kind: cmake

sources:
- kind: git_repo
  url: github:simdutf/simdutf.git
  track: 'v*'
  ref: v7.3.6-0-g6aacd743d20528a2082189504ac96caf749e6c2e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
