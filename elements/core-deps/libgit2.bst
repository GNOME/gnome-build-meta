kind: cmake
sources:
- kind: tar
  url: github_files:libgit2/libgit2/archive/v1.4.4.tar.gz
  ref: e9923e9916a32f54c661d55d79c28fa304cb23617639e68bff9f94d3e18f2d4b
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
