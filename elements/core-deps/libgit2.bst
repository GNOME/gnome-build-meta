kind: cmake
sources:
- kind: tar
  url: github_com:libgit2/libgit2/archive/v1.1.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- core-deps/libssh2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR:PATH=%{libdir}
    -DTHREADSAFE:BOOL=1
