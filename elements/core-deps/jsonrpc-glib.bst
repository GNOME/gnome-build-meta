kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.44/jsonrpc-glib-3.44.2.tar.xz
  ref: 965496b6e1314f3468b482a5d80340dc3b0340a5402d7783cad24154aee77396
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
