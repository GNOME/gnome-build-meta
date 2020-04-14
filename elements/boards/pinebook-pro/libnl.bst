kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

sources:
- kind: tar
  url: https://github.com/thom311/libnl/releases/download/libnl3_5_0/libnl-3.5.0.tar.gz
