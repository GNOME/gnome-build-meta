kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-todo.git
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libpeas.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
