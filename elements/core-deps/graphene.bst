kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/graphene/1.8/graphene-1.8.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
