kind: autotools
sources:
- kind: tar
  url: github_com:thom311/libnl/releases/download/libnl3_4_0/libnl-3.4.0.tar.gz
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
