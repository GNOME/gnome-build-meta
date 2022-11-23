kind: cmake

sources:
- kind: git_tag
  url: github:google/googletest.git
  track: main
  ref: release-1.12.0-129-ge68764c147ea0dac1e8811925c531d937396878e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
