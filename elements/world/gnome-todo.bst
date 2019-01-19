kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-todo
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/libpeas.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gtk+.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
