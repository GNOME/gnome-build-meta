kind: cmake

sources:
- kind: git_repo
  url: github:google/googletest.git
  track: main
  ref: v1.14.0-pre-279-g850cb69efda7ef00aed1c08fbe2bc1b6b4e615ee

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
