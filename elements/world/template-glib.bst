kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/template-glib.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- base.bst
