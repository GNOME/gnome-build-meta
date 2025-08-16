kind: cmake

sources:
- kind: git_repo
  url: github:libssh2/libssh2.git
  track: 'libssh2-*'
  ref: libssh2-1.11.1-0-ga312b43325e3383c865a87bb1d26cb52e3292641

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=1
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
