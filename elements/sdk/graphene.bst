kind: meson
sources:
- kind: tar
  url: gnome_downloads:graphene/1.10/graphene-1.10.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
