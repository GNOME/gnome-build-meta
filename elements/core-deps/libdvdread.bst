kind: meson
sources:
- kind: git_repo
  url: videolan:libdvdread.git
  track: '*.*.*'
  ref: 7.1.1-0-g8e43bfea6cc731f48902ce55e41c540b497b6a84
build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libdvdcss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable_docs=true
