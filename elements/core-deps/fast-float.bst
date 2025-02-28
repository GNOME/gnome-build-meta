kind: cmake

sources:
- kind: tar
  url: github_files:fastfloat/fast_float/archive/refs/tags/v6.1.6.tar.gz
  ref: 4458aae4b0eb55717968edda42987cabf5f7fc737aee8fede87a70035dba9ab0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
