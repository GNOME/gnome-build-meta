kind: cmake

sources:
- kind: git_repo
  url: github:google/googletest.git
  track: main
  ref: v1.14.0-pre-253-gb2b9072ecbe874f5937054653ef8f2731eb0f010

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
