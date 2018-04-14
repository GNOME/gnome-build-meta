kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/polari.git
  track: master
depends:
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- world/telepathy-glib.bst
- base.bst
