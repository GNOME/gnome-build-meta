kind: meson

sources:
- kind: git_tag
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.42.0-1-g2251592127cbba7d9e6c7bdcef51f8f503f7c02b

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
