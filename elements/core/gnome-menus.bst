kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-menus
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- base.bst
