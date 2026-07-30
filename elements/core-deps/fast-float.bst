kind: cmake

sources:
- kind: git_repo
  url: github:fastfloat/fast_float.git
  track: 'v*'
  ref: v8.2.10-0-g34164f547b7df3f5d794ff67e9f885c36819ebfc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
