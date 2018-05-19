kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgfbgraph
  track: master
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
