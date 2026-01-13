kind: cmake

sources:
- kind: git_repo
  url: github:libgit2/libgit2.git
  track: 'v*'
  ref: v1.9.2-0-gca225744b992bf2bf24e9a2eb357ddef78179667

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
