kind: cmake

sources:
- kind: tar
  url: github_files:libssh2/libssh2/archive/libssh2-1.11.1.tar.gz
  ref: 82b35c61c78b475647bdc981a183c5b5ab0d979e1caee94186e8f9150f2b0d0d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=1
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
