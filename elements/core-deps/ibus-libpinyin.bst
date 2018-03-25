kind: autotools
sources:
- kind: tar
  url: github_tar:libpinyin/ibus-libpinyin/archive/1.9.0.tar.gz
depends:
- core-deps/libpinyin.bst
- base.bst
variables:
  conf-local: --disable-lua-extension --with-python=python3
