kind: cmake

sources:
- kind: git_repo
  url: github:MediaArea/ZenLib.git
  track: v*.*.*
  ref: v0.4.41-0-g894980d3ecbc843d6ac685493f8f2ed5c2b6864c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  command-subdir: Project/CMake
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
