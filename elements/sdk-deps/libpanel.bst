kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.4/libpanel-1.4.1.tar.xz
  ref: 98410d00e734857ecdf33b9a20dd7b0fb38d8b6d31d4369bafc1c67392abb9de
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
