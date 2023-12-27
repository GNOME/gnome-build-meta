kind: cmake

sources:
- kind: tar
  url: github_files:strukturag/libheif/releases/download/v1.17.6/libheif-1.17.6.tar.gz
  ref: 8390baf4913eda0a183e132cec62b875fb2ef507ced5ddddc98dfd2f17780aee

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/dav1d.bst
