kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.10.0/ibus-libpinyin-1.10.0.tar.gz
depends:
- core-deps/libpinyin.bst
- sdk/ibus.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-lua-extension --with-python=python3
