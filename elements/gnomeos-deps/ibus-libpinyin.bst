kind: autotools
sources:
- kind: tar
  url: github_files:libpinyin/ibus-libpinyin/releases/download/1.15.2/ibus-libpinyin-1.15.2.tar.gz
  ref: d7478d5a8745d2c2f3edb15d4053e4c515293195f7e959c1a992c7c4d5e8fa07
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/ibus-daemon.bst
- gnomeos-deps/libpinyin.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
