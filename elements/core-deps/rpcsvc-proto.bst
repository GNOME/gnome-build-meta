kind: autotools
sources:
- kind: tar
  url: github_files:thkukuk/rpcsvc-proto/archive/v1.4.4.tar.gz
  ref: 7988641deae8463303b6273d7af98ece09111c385d4c9134a142a5fad3cdfef8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  autogen: |
    autoreconf -fvi
