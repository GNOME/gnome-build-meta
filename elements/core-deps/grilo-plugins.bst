kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/grilo-plugins/0.3/grilo-plugins-0.3.7.tar.xz
  ref: fc2f3bbc319136e53e1efb6659fa65b6af45db114b6621008f9abba64fad6820
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
- filename: base.bst
  junction: freedesktop-sdk.bst
