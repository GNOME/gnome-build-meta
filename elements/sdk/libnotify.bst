kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libnotify/0.7/libnotify-0.7.7.tar.xz
  ref: 9cb4ce315b2655860c524d46b56010874214ec27e854086c1a1d0260137efc04
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
