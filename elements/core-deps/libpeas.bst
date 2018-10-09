kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libpeas/1.22/libpeas-1.22.0.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-python3
