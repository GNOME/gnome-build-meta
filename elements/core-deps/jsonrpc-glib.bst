kind: meson
sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.40/jsonrpc-glib-3.40.0.tar.xz
  ref: c2e3d16257c7266cd3901884e22375575bf61a8e1f67596c88e0d87ae70d0ef4
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
