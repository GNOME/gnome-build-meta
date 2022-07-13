kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.0/libpanel-1.0.alpha.tar.xz
  ref: 370b39bf544c65ff732927817ede337cb8a15aa36d7081cdb91b593c040d3195
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
