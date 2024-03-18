kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.6/libpanel-1.6.0.tar.xz
  ref: b773494a3c69300345cd8e27027448d1189183026cc137802f886417c6ea30b6
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
