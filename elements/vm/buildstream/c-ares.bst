kind: cmake

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

sources:
- kind: git_tag
  url: github:c-ares/c-ares.git
  track: main
  ref: cares-1_19_0-10-gf95ca36cde8cbbf90860d7b5403e3efb69f8b0f7
