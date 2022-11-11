kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: master
  ref: b4a4a6b01fde193fde1be77bcec1712e82faf6a5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst