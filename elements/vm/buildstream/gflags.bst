kind: cmake

sources:
- kind: tar
  url: github_files:gflags/gflags/archive/refs/tags/v2.2.2.tar.gz
  ref: 34af2f15cf7367513b352bdcd2493ab14ce43692d2dcd9dfc499492966c64dcf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
