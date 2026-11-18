kind: cmake

sources:
- kind: git_repo
  url: github:lipnitsk/libcue.git
  track: 'v*'
  ref: v2.4.2-0-g659c6340cc1845f88d74f116c46f4903f87c9e33

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
