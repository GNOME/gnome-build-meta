kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: master
  ref: e51b4ef779f58b89563bbf8778f05766ba110e10

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
