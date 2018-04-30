kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-todo
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/libpeas.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gtk+-3.bst
- base.bst
