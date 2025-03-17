kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.10/libpanel-1.10.0.tar.xz
  ref: 578ce512278ff2bb5eeebb55099392c52537a5abd9bd0629567f102532b38b25
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
