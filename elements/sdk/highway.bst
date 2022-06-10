kind: cmake

sources:
- kind: git_tag
  url: github:google/highway.git
  track: master
  ref: 1.0.5-5-gbfcc15ef6d8d09a445489cc35a0ffcb8ddfbdd48

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
