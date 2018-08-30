kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gfbgraph/0.2/gfbgraph-0.2.3.tar.xz
  ref: da1179083cde2b649d7491c745250a00d292e390fd620b7dd2dd95a122dae0b6
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/librest.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
