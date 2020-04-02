kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.2.tar.xz
  ref: 81e9143833785cdcf96c1da5d0357a8bcf0cd2b0119f15aa0cae775d1f19ffc3
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
