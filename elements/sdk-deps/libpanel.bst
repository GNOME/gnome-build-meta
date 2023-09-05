kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.3/libpanel-1.3.1.tar.xz
  ref: 525038b1930662265648f84a1fa0bfdc0de9fcb2333c54884bdf30cc462a1c5d
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
