kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.1/libpanel-1.1.1.tar.xz
  ref: a88f84103844d702ddcdf97ebe9b21a0652fab029ff822742f22471db64308be
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
