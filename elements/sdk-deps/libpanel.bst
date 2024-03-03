kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.5/libpanel-1.5.0.tar.xz
  ref: 13ef30e791295bb998c87a73bc9d194578c2f2c23d14a489c78697fbeefe90be
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
