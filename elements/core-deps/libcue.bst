kind: cmake
sources:
- kind: tar
  url: https://github.com/lipnitsk/libcue/archive/v2.2.1.tar.gz
depends:
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: |
    -DBUILD_SHARED_LIBS=ON
