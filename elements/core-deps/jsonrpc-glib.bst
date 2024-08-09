kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.44/jsonrpc-glib-3.44.1.tar.xz
  ref: 1361d17e9c805646afe5102e59baf8ca450238600fcabd01586c654b78bb30df
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
