kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/jsonrpc-glib.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- core-deps/json-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
