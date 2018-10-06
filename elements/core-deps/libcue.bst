kind: cmake
sources:
- kind: tar
  url: https://github.com/lipnitsk/libcue/archive/v2.2.1.tar.gz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  cmake-local: |
    -DBUILD_SHARED_LIBS=ON
