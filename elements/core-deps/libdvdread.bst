kind: meson
sources:
- kind: git_repo
  url: videolan:libdvdread.git
  track: '*.*.*'
  ref: 7.0.1-0-gc7f373951bae9642e1ce1fbb2cd02f92c09756e0
build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libdvdcss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
