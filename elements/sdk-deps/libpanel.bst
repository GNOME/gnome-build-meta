kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.8/libpanel-1.8.1.tar.xz
  ref: b87b8fa9b79768cc704243793f0158a040a1e46d37b9889188545a7f7dcaa6fb
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
