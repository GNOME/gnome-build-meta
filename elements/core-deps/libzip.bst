kind: cmake

sources:
- kind: git_repo
  url: github:nih-at/libzip.git
  track: 'v*'
  ref: v1.12-0-gb26af3afd67e6b01e1e38a446ecb950e47fff146

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
