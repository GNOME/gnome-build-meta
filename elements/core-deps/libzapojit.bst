kind: autotools
sources:
- kind: git
  url: git_gnome_org:libzapojit
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-online-accounts.bst
- sdk/json-glib.bst
- sdk/librest.bst
- sdk/libsoup.bst
- base.bst
