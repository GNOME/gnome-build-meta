kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/graphene/1.8/graphene-1.8.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
