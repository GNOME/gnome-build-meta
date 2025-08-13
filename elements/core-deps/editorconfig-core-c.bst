kind: cmake

sources:
- kind: tar
  url: 
    github_files:editorconfig/editorconfig-core-c/archive/refs/tags/v0.12.9.tar.gz
  ref: 4aaa4e3883332aac7ec19c169dcf128f5f0f963f61d09beb299eb2bce5944e2c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
