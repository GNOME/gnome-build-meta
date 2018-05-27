kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgdata
  track: master
depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gobject-introspection.bst
- core-deps/json-glib.bst
- core-deps/liboauth.bst
- core-deps/libsoup.bst
- core-deps/uhttpmock.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
