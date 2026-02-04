kind: cmake

sources:
- kind: git_repo
  url: github:nih-at/libzip.git
  track: 'v*'
  ref: v1.11.4-0-g6f8a0cdd24a0dc6cce9dac4a7679da784ab124ea

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
