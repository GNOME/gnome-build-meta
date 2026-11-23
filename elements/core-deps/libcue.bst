kind: cmake

sources:
- kind: git_repo
  url: github:lipnitsk/libcue.git
  track: 'v*'
  ref: v2.4.3-0-g643a7649aa554ec4c77c79a49fa5e52a2c150fa4

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
