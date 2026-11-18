kind: cmake

sources:
- kind: git_repo
  url: github:simdutf/simdutf.git
  track: 'v*'
  ref: v9.4.0-0-g358e33c97848dda568c5b113e1be6acb8d63dfb9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
