kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.3/libpanel-1.3.0.tar.xz
  ref: da677114aca78417ec31d849d605bd2a35864c18007af5e3457d9c92cb916420
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
