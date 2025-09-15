kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.10/libpanel-1.10.2.tar.xz
  ref: cc12e8e10f1e4977bd12ad3ffaedcd52ac176348b4af6fe5da686b96325bfe01
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
