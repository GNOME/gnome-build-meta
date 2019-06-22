kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.11.1/ibus-libpinyin-1.11.1.tar.gz
depends:
- sdk/ibus.bst
- world/libpinyin.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
