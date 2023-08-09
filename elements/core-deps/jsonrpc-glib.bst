kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.44/jsonrpc-glib-3.44.0.tar.xz
  ref: 69406a0250d0cc5175408cae7eca80c0c6bfaefc4ae1830b354c0433bcd5ce06
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
