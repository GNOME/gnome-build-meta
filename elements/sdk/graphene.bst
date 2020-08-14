kind: meson
sources:
- kind: tar
  url: gnome_downloads:graphene/1.10/graphene-1.10.2.tar.xz
  ref: e97de8208f1aac4f913d4fa71ab73a7034e807186feb2abe55876e51c425a7f6
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
