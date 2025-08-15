kind: autotools
sources:
- kind: tar
  url: 
    github_files:libpinyin/ibus-libpinyin/releases/download/1.15.4/ibus-libpinyin-1.15.4.tar.gz
  ref: a9fe535f0b9789f089dc295a65df388673f40fea145007b4380b0048f7123675
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
