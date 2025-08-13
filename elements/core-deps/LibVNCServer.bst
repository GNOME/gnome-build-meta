kind: cmake

sources:
- kind: tar
  url: github_files:LibVNC/libvncserver/archive/LibVNCServer-0.9.15.tar.gz
  ref: 62352c7795e231dfce044beb96156065a05a05c974e5de9e023d688d8ff675d7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
