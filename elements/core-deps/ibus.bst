kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.17/ibus-1.5.17.tar.gz
depends:
- core-deps/dconf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-tests --disable-gconf --enable-dconf --disable-memconf --disable-ui
    --disable-gtk2 --disable-schema-compile --with-python=python3 --disable-emoji-dict
