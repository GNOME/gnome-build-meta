kind: cmake

sources:
- kind: git_repo
  url: github:DaveGamble/cJSON.git
  track: 'v*'
  ref: v1.7.18-0-gacc76239bee01d8e9c858ae2cab296704e52d916

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
