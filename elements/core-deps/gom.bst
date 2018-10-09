kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gom/0.3/gom-0.3.3.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
