kind: cmake

sources:
- kind: git_tag
  url: github:google/googletest.git
  track: main
  ref: release-1.12.0-119-g912db742531bf82efb01194bc08140416e3b3467

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
