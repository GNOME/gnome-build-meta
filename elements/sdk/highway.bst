kind: cmake

sources:
- kind: git_tag
  url: github:google/highway.git
  track: master
  ref: 1.0.5-12-g5bcaecc838af1207f037bba8c19c36de3d40c96d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
