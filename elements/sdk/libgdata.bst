kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgdata
  track: master
depends:
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/liboauth.bst
- sdk/libsoup.bst
- sdk/uhttpmock.bst
- base.bst
