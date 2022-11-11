kind: cmake

sources:
- kind: git_tag
  url: github:google/re2.git
  track: main
  ref: 2022-06-01-18-g7a65faf439295e941baa6640a717d89c1f13e9cd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
