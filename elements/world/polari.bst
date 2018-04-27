kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/polari.git
  track: master
depends:
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- core-deps/gspell.bst
- sdk/gtk+-3.bst
- world/telepathy-glib.bst
- base.bst
