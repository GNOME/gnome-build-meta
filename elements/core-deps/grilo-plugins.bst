kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo-plugins/0.3/grilo-plugins-0.3.8.tar.xz
  ref: 4cdd770b1554ee49cf77705401a35daa3ebff81badc05bd69d7240f50e60d65b
depends:
- core-deps/gmime3.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp.bst
- core-deps/libgdata.bst
- core-deps/libmediaart.bst
- core-deps/librest.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: sdk/yelp-tools.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
