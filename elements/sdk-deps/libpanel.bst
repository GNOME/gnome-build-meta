kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.8/libpanel-1.8.0.tar.xz
  ref: 5a9b6b54452fa1903a2fd64ba62278ef94b9b11659b7e1a5fda3518b66cd39c3
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
