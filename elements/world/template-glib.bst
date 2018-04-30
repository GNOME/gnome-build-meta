kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/template-glib.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- base.bst
