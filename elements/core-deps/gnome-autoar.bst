kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-autoar/0.2/gnome-autoar-0.2.3.tar.xz
  ref: 5de9db0db028cd6cab7c2fec46ba90965474ecf9cd68cfd681a6488cf1fb240a
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
