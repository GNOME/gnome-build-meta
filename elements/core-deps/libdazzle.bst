kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libdazzle.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- base.bst
