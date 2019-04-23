kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.2/gtksourceview-4.2.0.tar.xz
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: "-Dinstall_tests=true -Dgtk_doc=true\n"
