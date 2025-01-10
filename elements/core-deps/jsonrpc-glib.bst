kind: meson

sources:
- kind: git_repo
  url: gnome:jsonrpc-glib.git
  track: main
  ref: 3.44.1-2-g08fa9a82a69f4bba9b4efda3513dbadcf1a08f06

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
