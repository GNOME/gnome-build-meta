kind: meson

sources:
- kind: git_repo
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.44.0-3-ge4395ff72f7358913b39e776da3b0f26f744cb0b

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
