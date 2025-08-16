kind: cmake

sources:
- kind: git_repo
  url: github:LibVNC/libvncserver.git
  track: 'LibVNCServer-*'
  ref: LibVNCServer-0.9.15-0-g9b54b1ec32731bd23158ca014dc18014db4194c3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
