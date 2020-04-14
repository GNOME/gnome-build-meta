kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/jsonrpc-glib.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
