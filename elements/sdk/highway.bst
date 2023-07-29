kind: cmake

sources:
- kind: git_tag
  url: github:google/highway.git
  track: master
  track-tags: true
  ref: 1.0.5-0-gf61a223a42460204205425604c6521c3eae03058

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
