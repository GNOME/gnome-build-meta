kind: autotools
sources:
- kind: git_repo
  url: github:libpinyin/ibus-libpinyin.git
  track: '*.*'
  ref: 1.16.5-0-g2d2cdac0187101aa0cd7ac06694a8340721ddfbb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/libnotify.bst
- core-deps/ibus-daemon.bst
- gnomeos-deps/libpinyin.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --disable-lua-extension
    --with-python=python3
  autogen: glib-gettextize --force --copy && autoreconf -fvi
