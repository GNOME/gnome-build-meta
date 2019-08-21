kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.3/gtksourceview-4.3.1.tar.xz
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
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
