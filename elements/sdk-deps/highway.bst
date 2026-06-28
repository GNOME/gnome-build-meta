kind: cmake

sources:
- kind: git_repo
  url: github:google/highway.git
  track: '*.*.*'
  ref: 1.2.0-0-g457c891775a7397bdb0376bb1031e6e027af1c48

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
