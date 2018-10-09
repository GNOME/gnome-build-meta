kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gfbgraph/0.2/gfbgraph-0.2.3.tar.xz
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
