kind: cmake

sources:
- kind: tar
  url: github_files:fmtlib/fmt/archive/refs/tags/11.1.4.tar.gz
  ref: ac366b7b4c2e9f0dde63a59b3feb5ee59b67974b14ee5dc9ea8ad78aa2c1ee1e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
