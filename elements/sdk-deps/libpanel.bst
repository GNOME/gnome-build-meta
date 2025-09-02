kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.10/libpanel-1.10.1.tar.xz
  ref: 936bbe96dfb383556482120fddd4533a52d2f49303328cb694861606492445eb
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
