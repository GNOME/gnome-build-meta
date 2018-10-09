kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgee/0.20/libgee-0.20.1.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
