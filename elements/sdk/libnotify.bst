kind: meson
sources:
- kind: tar
  url: gnome_downloads:libnotify/0.7/libnotify-0.7.8.tar.xz
  ref: 69209e0b663776a00c7b6c0e560302a8dbf66b2551d55616304f240bba66e18c
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocbook_docs=disabled
