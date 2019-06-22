kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/jsonrpc-glib.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
