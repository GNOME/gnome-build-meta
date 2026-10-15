kind: cmake

sources:
- kind: git_repo
  url: github:nih-at/libzip.git
  track: 'v*'
  ref: v1.12.1-0-g8e037534ccd62f444abbe4ce265443ee74bbfeb3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
