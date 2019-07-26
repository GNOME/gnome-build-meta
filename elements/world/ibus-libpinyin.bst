kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.11.1/ibus-libpinyin-1.11.1.tar.gz
depends:
- filename: core-deps/intltool.bst
  type: build
- sdk/ibus.bst
- world/libpinyin.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
