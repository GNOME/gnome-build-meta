kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.43/jsonrpc-glib-3.43.0.tar.xz
  ref: 0f248746478ef60fdf2fb255f7dbbed45b87150bf2855ec0a866107918dec413
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
