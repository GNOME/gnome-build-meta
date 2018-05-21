kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-online-accounts
  track: master
depends:
- core-deps/librest.bst
- sdk/WebKitGTK+.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-telepathy
