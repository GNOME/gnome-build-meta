kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.10.0/ibus-libpinyin-1.10.0.tar.gz
depends:
- sdk/ibus.bst
- world/libpinyin.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-lua-extension --with-python=python3
