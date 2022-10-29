kind: meson

sources:
- kind: git_tag
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.42.0-4-g1b95b3a8e4a9140be0a4e9e5fdd0ce1e05f45969

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
