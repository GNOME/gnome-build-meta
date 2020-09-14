kind: meson
sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.38/jsonrpc-glib-3.38.0.tar.xz
  ref: dc5f1914a91152b70fa8fc9a11ede13148ab4af644db27a36632388c927a8a82
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
