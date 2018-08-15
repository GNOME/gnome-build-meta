depends:
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/json-glib.bst
- core-deps/librest.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 3d25f99329105abb99d1e9651b0aa1842065456ea54c22970a7330e9f3d1c37e
  url: https://download.gnome.org/sources/libzapojit/0.0/libzapojit-0.0.3.tar.xz
