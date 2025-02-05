kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.9/libpanel-1.9.0.tar.xz
  ref: 0d112b1a705f26b8bc2db23bc20eae945f25e99cc2adb96bfa07d8feabc0c76b
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
