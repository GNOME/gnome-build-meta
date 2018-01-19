kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgdata
  track: master
depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gobject-introspection.bst
- core-deps/json-glib.bst
- core-deps/libsoup.bst
- core-deps/m4-common.bst
- core-deps/uhttpmock.bst
- base.bst
