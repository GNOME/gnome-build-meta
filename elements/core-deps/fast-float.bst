kind: cmake

sources:
- kind: git_repo
  url: github:fastfloat/fast_float.git
  track: 'v*'
  ref: v8.2.2-0-g97b54ca9e75f5303507699d27c6b4f4efe4641a1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
