kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: lts_2023_01_25
  ref: 20230125.3-0-gc2435f8342c2d0ed8101cb43adfd605fdc52dca2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
