kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/json-glib.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
