kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gsound/1.0/gsound-1.0.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk-doc
