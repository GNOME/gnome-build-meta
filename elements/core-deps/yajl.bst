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
