kind: cmake

sources:
- kind: tar
  url: github_com:commonmark/cmark/archive/refs/tags/0.30.1.tar.gz

  ref: 9609506bd7473e769452488ef981eb53f082011b1ec6c9b6c73ed57062e25ee6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
