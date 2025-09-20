kind: cmake
sources:
- kind: git_repo
  url: matrix:matrix-org/olm
  track: "*.*.*"
  ref: 3.2.16-0-g7e0c8277032e40308987257b711b38af8d77cc69

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
