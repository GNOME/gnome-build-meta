kind: cmake

sources:
- kind: git_tag
  url: github:google/googletest.git
  track: main
  ref: release-1.12.0-118-g44c03643cfbc649488a0f437cd18e05f11960d19

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
