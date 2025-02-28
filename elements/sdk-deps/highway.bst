kind: cmake

sources:
- kind: tar
  url: github_files:google/highway/archive/refs/tags/1.2.0.tar.gz
  ref: 7e0be78b8318e8bdbf6fa545d2ecb4c90f947df03f7aadc42c1967f019e63343

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
