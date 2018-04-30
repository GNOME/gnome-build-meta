kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/polari.git
  track: master
depends:
- core-deps/gspell.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- world/telepathy-glib.bst
- base.bst
