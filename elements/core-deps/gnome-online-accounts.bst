kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-accounts
  track: master
depends:
- core-deps/librest.bst
- sdk/WebKitGTK+.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
