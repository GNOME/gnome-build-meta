kind: cmake

sources:
- kind: git_repo
  url: github:lipnitsk/libcue.git
  track: 'v*'
  ref: v2.3.0-0-gcfb98a060fd79dbc3463d85f0f29c3c335dfa0ea

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
