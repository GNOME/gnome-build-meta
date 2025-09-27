kind: meson

sources:
- kind: git_repo
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.44.2-2-g54f971a9088472c68c85d2a721490942995956d3

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
