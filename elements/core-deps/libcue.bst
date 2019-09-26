kind: cmake
sources:
- kind: tar
  url: https://github.com/lipnitsk/libcue/archive/v2.2.1.tar.gz
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
