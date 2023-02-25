kind: meson

sources:
- kind: git_tag
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.42.0-6-g9b33303d01dfb84cd7affcabc1ab81f9013fc75f

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
