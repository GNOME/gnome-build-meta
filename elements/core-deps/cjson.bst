kind: cmake

sources:
- kind: git_repo
  url: github:DaveGamble/cJSON.git
  track: 'v*'
  ref: v1.7.19-0-gc859b25da02955fef659d658b8f324b5cde87be3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
