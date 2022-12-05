kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpanel/1.0/libpanel-1.0.2.tar.xz
  ref: a672043a48ae20050097c9a9f9d98f2a73a1ec8547822ae7bba54d3cc88d7fe2
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
