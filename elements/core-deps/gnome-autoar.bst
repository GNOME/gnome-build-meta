kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-autoar/0.2/gnome-autoar-0.2.3.tar.xz
  ref: 5de9db0db028cd6cab7c2fec46ba90965474ecf9cd68cfd681a6488cf1fb240a
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
