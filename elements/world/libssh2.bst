kind: cmake
sources:
- kind: tar
  url: github_com:libssh2/libssh2/archive/libssh2-1.8.0.tar.gz
depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  cmake-local: -DBUILD_SHARED_LIBS=1
