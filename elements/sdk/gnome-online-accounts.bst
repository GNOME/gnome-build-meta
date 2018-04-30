kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-online-accounts
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/librest.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- base.bst
variables:
  conf-local: --disable-telepathy
