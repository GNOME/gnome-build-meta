kind: cmake

sources:
- kind: git_repo
  url: github:libgit2/libgit2.git
  track: 'v*'
  ref: v1.9.3-0-g1affb8b19346c4f90e163a9a0364959ff1410f64

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
