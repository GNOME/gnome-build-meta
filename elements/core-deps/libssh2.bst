kind: cmake

sources:
- kind: tar
  url: github_files:libssh2/libssh2/archive/libssh2-1.9.0.tar.gz
  ref: db257d41754b16518c3bd0c3b8dd08940ccbee5fc44cef7bfb052d930bcbbda3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=1
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
