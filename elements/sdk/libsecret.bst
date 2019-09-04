kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.18/libsecret-0.18.8.tar.xz
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
