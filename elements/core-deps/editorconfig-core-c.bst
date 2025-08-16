kind: cmake

sources:
- kind: git_repo
  url: github:editorconfig/editorconfig-core-c.git
  track: 'v*'
  ref: v0.12.9-0-ge082c947e7f7b14240195d55c060a6e1eda1b0a1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
