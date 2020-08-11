kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DLIB_SUFFIX="/%{gcc_triplet}"

sources:
- kind: tar
  url: https://github.com/lloyd/yajl/archive/2.1.0.tar.gz
  ref: 3fb73364a5a30efe615046d07e6db9d09fd2b41c763c5f7d3bfb121cd5c5ac5a
