kind: cmake

sources:
- kind: tar
  url: github_files:editorconfig/editorconfig-core-c/archive/refs/tags/v0.12.5.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
