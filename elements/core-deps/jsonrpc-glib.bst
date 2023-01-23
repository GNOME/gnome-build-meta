kind: meson

sources:
- kind: git_tag
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.42.0-5-g3ff4bd049598d223e8fe1e5707eee7be6b88c105

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
