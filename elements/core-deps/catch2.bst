kind: cmake

sources:
- kind: tar
  url: github_files:catchorg/Catch2/archive/refs/tags/v3.8.0.tar.gz
  ref: 1ab2de20460d4641553addfdfe6acd4109d871d5531f8f519a52ea4926303087

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
