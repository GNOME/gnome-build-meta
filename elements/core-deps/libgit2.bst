kind: cmake

sources:
- kind: git_repo
  url: github:libgit2/libgit2.git
  track: 'v*'
  ref: v1.9.4-0-gf7164261c9bc0a7e0ebf767c584e5192810a8b24

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
