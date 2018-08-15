depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: be566d1b32ef0cfc449765da10baa907dc8c072fdaad3bd1d105e777e3192bf3
  url: https://download.gnome.org/sources/gobject-introspection/1.57/gobject-introspection-1.57.2.tar.xz
variables:
  conf-local: --with-python=python3
