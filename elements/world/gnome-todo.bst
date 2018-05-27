kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-todo
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gtk+-3.bst
- core-deps/libpeas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
