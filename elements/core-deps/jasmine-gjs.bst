kind: meson

sources:
- kind: tar
  url: github_files:ptomato/jasmine-gjs/releases/download/2.6.4/jasmine-gjs-2.6.4.tar.xz
  ref: 66f52852d14c81411e6a1cee04c78f313b3bdae44ee55bce3a9d116650f6a384
- kind: patch_queue
  path: patches/jasmine-gjs
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
