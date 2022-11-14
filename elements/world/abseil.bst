kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: master
  ref: 48c36b48fc7ead5a0fb6de7577780c2acf046e15

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
