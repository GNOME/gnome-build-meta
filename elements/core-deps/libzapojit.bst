kind: autotools
sources:
- kind: git
  url: git_gnome_org:libzapojit
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsoup.bst
- base.bst
