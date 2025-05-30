kind: cmake

sources:
- kind: git_repo
  url: github:google/googletest.git
  track: main
  ref: v1.14.0-pre-139-g1d17ea141d2c11b8917d2c7d029f1c4e2b9769b2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
