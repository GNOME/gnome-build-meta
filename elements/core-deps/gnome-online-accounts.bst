kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-accounts
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsecret.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/m4-common.bst
- core-deps/telepathy-glib.bst
- base.bst
