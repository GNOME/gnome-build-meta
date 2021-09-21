kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.12.0/ibus-libpinyin-1.12.0.tar.gz
  ref: ad8962dc9d637b1e5f316a67fd920aeadfafee26bf00f50d344e10ef5ca58276
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/ibus-daemon.bst
- vm/libpinyin.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
