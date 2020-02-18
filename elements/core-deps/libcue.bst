kind: cmake
sources:
- kind: tar
  url: https://github.com/lipnitsk/libcue/archive/v2.2.1.tar.gz
  ref: f27bc3ebb2e892cd9d32a7bee6d84576a60f955f29f748b9b487b173712f1200
depends:
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
