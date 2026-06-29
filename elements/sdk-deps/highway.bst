kind: cmake

sources:
- kind: git_repo
  url: github:google/highway.git
  track: '*.*.*'
  ref: 1.4.0-0-g2607d3b5b0113992fe84d3848859eae13b3b52c1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
