kind: cmake

sources:
- kind: git_repo
  url: github:MediaArea/MediaInfoLib.git
  track: v*.*
  ref: v26.10-0-g153ad67a62172534b401e9d9a5752dc759fff77b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- core-deps/libzen.bst

variables:
  command-subdir: Project/CMake
  cmake-local: >-
    -DLIB_INSTALL_DIR=%{libdir}
    -DBUILD_SHARED_LIBS=YES
