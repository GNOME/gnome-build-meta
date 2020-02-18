kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo/0.3/grilo-0.3.12.tar.xz
depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
