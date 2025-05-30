kind: cmake

sources:
- kind: tar
  url: github_files:libgit2/libgit2/archive/v1.9.0.tar.gz
  ref: 75b27d4d6df44bd34e2f70663cfd998f5ec41e680e1e593238bbe517a84c7ed2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- core-deps/libssh2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DLIB_INSTALL_DIR:PATH=%{libdir}
    -DUSE_THREADS:BOOL=ON
    -DUSE_SSH:BOOL=ON
