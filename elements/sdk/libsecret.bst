kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.3.tar.xz
  ref: 4fcb3c56f8ac4ab9c75b66901fb0104ec7f22aa9a012315a14c0d6dffa5290e4
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/valgrind.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: -Dgtk_doc=false
