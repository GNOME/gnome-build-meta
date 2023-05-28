kind: cmake

sources:
- kind: tar
  url: github_files:google/glog/archive/refs/tags/v0.6.0.tar.gz
  ref: 8a83bf982f37bb70825df71a9709fa90ea9f4447fb3c099e1d720a439d88bad6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
