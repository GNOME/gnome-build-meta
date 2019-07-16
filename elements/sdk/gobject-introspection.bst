kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.60/gobject-introspection-1.60.2.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: "-Dgtk_doc=true\n"
