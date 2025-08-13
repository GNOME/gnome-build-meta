kind: cmake

sources:
- kind: tar
  url: github_files:simdutf/simdutf/archive/refs/tags/v7.3.5.tar.gz
  ref: 788a081b39a7dfb3755e02df07c67cdd45456b1d7d5b58bdf34b9764b9e1165b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
