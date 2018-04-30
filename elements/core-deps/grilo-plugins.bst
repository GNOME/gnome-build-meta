kind: autotools
sources:
- kind: git
  url: git_gnome_org:grilo-plugins
  track: master
depends:
- core-deps/gmime3.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp.bst
- core-deps/gupnp-av.bst
- core-deps/libmediaart.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- sdk/gnome-online-accounts.bst
- sdk/json-glib.bst
- sdk/libgdata.bst
- sdk/librest.bst
- sdk/libsoup.bst
- base.bst
