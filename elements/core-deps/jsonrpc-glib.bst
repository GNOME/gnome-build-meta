kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.41/jsonrpc-glib-3.41.0.tar.xz
  ref: 7c4e6a5b8c3729632cecc312dc1163c4d00243d32e90528e54ec5038a23a7c21
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
