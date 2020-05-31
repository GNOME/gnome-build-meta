kind: meson
sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.34/jsonrpc-glib-3.34.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
