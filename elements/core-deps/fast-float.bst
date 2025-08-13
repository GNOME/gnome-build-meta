kind: cmake

sources:
- kind: tar
  url: github_files:fastfloat/fast_float/archive/refs/tags/v8.0.2.tar.gz
  ref: e14a33089712b681d74d94e2a11362643bd7d769ae8f7e7caefe955f57f7eacd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
