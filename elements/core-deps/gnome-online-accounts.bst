kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-online-accounts
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
