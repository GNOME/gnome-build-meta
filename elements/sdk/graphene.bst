kind: meson
sources:
- kind: tar
  url: gnome_downloads:graphene/1.9/graphene-1.9.6.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
