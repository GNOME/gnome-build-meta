kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.1/libpanel-1.1.2.tar.xz
  ref: 1f6d554253e2c8e067c78a7040cf38970c801cba535a1196ae59843d22474ab9
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
