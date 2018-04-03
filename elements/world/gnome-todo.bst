kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-todo
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- base.bst
