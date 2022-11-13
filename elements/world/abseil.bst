kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: master
  ref: 1b976982d8cdbfd8320f34209b065bae7adefb09

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
