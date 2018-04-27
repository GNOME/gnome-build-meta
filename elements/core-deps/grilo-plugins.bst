kind: autotools
sources:
- kind: git
  url: git_gnome_org:grilo-plugins
  track: master
depends:
- core-deps/gmime3.bst
- sdk/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp.bst
- sdk/json-glib.bst
- sdk/libgdata.bst
- core-deps/libmediaart.bst
- sdk/librest.bst
- sdk/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- base.bst
