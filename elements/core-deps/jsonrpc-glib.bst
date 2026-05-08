kind: meson

sources:
- kind: git_repo
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.44.2-3-g611c2e9b06ff284f69fde3f9374d61a253380dc0

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
