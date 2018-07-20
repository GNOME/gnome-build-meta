kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gfbgraph/0.2/gfbgraph-0.2.3.tar.xz
  ref: da1179083cde2b649d7491c745250a00d292e390fd620b7dd2dd95a122dae0b6
depends:
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
