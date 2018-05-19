kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgdata
  track: master
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
