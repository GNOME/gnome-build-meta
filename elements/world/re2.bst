kind: cmake

sources:
- kind: git_tag
  url: github:google/re2.git
  track: main
  ref: 2022-06-01-19-g9bacb6659ee51dcc78d9a6e8bf4c0ae5161ea817

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
