kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libdazzle/3.31/libdazzle-3.31.92.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
