kind: meson
sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.34/jsonrpc-glib-3.34.0.tar.xz
  ref: d1ceb24b503e49e7bfe6e44630c03abc65f2d047a68271eb62e332b13be90548
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
