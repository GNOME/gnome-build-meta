kind: meson
sources:
- kind: tar
  url: gnome_downloads:libsecret/0.20/libsecret-0.20.1.tar.xz
  ref: 57f73e94ec6263a17a077fb809cf8cf424637a897a7f15b4eec42ce4aef52447
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
