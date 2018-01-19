kind: autotools
sources:
- kind: git
  url: git_gnome_org:vino
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libnotify.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/telepathy-glib.bst
- core/NetworkManager.bst
- base.bst
