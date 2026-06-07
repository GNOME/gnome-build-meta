kind: cmake

sources:
- kind: git_repo
  url: github:MediaArea/MediaInfoLib.git
  track: v*.*
  ref: v26.05-0-gf23e69ce89581343f3b7a42e06828a5331e290d5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/libzen.bst

variables:
  command-subdir: Project/CMake
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DBUILD_SHARED_LIBS=YES
