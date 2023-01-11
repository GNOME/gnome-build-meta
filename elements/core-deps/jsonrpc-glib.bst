kind: meson

sources:
- kind: tar
  url: gnome_downloads:jsonrpc-glib/3.42/jsonrpc-glib-3.42.0.tar.xz
  ref: 221989a57ca82a12467dc427822cd7651b0cad038140c931027bf1074208276b
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
