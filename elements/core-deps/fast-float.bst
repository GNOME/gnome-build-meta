kind: cmake

sources:
- kind: git_repo
  url: github:fastfloat/fast_float.git
  track: 'v*'
  ref: v8.4.0-0-g517e6b8e008341fc4ebf80cc709d8b51610a888e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
