kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.44/jsonrpc-glib-3.44.2.tar.xz
  ref: 965496b6e1314f3468b482a5d80340dc3b0340a5402d7783cad24154aee77396
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
