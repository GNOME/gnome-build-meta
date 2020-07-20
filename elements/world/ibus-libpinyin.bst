kind: autotools
sources:
- kind: tar
  url: github_com:libpinyin/ibus-libpinyin/releases/download/1.11.1/ibus-libpinyin-1.11.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/ibus-daemon.bst
- world/libpinyin.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
