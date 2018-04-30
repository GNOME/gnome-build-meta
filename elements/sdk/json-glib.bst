kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/json-glib.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- base.bst
