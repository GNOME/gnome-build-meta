kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.7/libpanel-1.7.1.tar.xz
  ref: 7b60fd83f0f57e7d80f27c3ab40b369d588f93546ba13de6195321e42d3d1429
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
