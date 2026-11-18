kind: cmake

sources:
- kind: git_repo
  url: github:fastfloat/fast_float.git
  track: 'v*'
  ref: v8.3.3-0-gdbeabeeb3e6791cb96994c2a7a084c36e62ccfb2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
