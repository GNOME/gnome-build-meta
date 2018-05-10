kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/archive/1.9.0.tar.gz
depends:
- core-deps/ibus.bst
- core-deps/libpinyin.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-lua-extension --with-python=python3
