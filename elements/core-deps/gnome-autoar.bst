kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-autoar/0.2/gnome-autoar-0.2.3.tar.xz
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
