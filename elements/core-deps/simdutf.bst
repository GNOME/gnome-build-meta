kind: cmake

sources:
- kind: git_repo
  url: github:simdutf/simdutf.git
  track: 'v*'
  ref: v9.1.2-0-gbe33cbe34b2d222566fd88f1084f86771ed8ae4a

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
