kind: cmake

sources:
- kind: git_repo
  url: github:commonmark/cmark.git
  track: '*.*'
  ref: 0.31.1-0-gbb3678d7a73cb02d35c8876ecd097072636200a8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
