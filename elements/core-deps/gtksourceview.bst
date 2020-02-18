kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.4/gtksourceview-4.4.0.tar.xz
  ref: 9ddb914aef70a29a66acd93b4f762d5681202e44094d2d6370e51c9e389e689a
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dinstall_tests=true -Dgtk_doc=true
