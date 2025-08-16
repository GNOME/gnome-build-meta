kind: cmake

sources:
- kind: git_repo
  url: github:fastfloat/fast_float.git
  track: 'v*'
  ref: v8.0.2-0-g50a80a73ab2ab256ba1c3bf86923ddd8b4202bc7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
