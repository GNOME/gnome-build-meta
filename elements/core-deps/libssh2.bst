kind: cmake
sources:
- kind: tar
  url: github_com:libssh2/libssh2/archive/libssh2-1.9.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=1
