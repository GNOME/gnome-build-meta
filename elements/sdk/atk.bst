kind: meson
sources:
- kind: tar
  url: gnome_downloads:atk/2.34/atk-2.34.1.tar.xz
  ref: d4f0e3b3d21265fcf2bc371e117da51c42ede1a71f6db1c834e6976bb20997cb
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
