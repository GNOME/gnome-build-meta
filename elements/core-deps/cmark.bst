kind: cmake

sources:
- kind: tar
  url: github_com:commonmark/cmark/archive/refs/tags/0.30.1.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
