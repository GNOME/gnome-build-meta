kind: cmake

sources:
- kind: git_tag
  url: github:google/googletest.git
  track: main
  ref: release-1.12.0-126-g9c332145b71c36a5bad9688312c79184f98601ff

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
