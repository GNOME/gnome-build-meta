kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.17/ibus-1.5.17.tar.gz
  ref: 0347a8055977ca458e8add750af5f9b76e1a524844cc3b0e2fad70ce153dd219
depends:
- sdk/dconf.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --disable-tests --disable-gconf --enable-dconf --disable-memconf --disable-ui
    --disable-gtk2 --disable-schema-compile --with-python=python3 --disable-emoji-dict
