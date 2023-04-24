kind: cmake

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

sources:
- kind: git_tag
  url: github:c-ares/c-ares.git
  track: main
  ref: cares-1_19_0-0-gfddf01938d3789e06cc1c3774e4cd0c7d2a89976
