kind: meson

sources:
- kind: tar
  url: github_files:ptomato/jasmine-gjs/releases/download/3.10.1/jasmine-gjs-3.10.1.tar.xz
  ref: 2a42dfe57bb65a880df299f1f7cabaa8257d175e50422bc6b7c2173266a35e80

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gjs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
