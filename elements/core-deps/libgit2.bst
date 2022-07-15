kind: cmake
sources:
- kind: tar
  url: github_files:libgit2/libgit2/archive/v1.4.4.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- core-deps/libssh2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR:PATH=%{libdir}
    -DUSE_THREADS:BOOL=ON
    -DUSE_SSH:BOOL=ON
