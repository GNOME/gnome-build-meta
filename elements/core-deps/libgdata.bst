depends:
- core-deps/gcr.bst
- core-deps/glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gobject-introspection.bst
- core-deps/json-glib.bst
- core-deps/liboauth.bst
- core-deps/libsoup.bst
- core-deps/uhttpmock.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 85c4f7674c0098ffaf060ae01b6b832cb277b3673d54ace3bdedaad6b127453a
  url: https://download.gnome.org/sources/libgdata/0.17/libgdata-0.17.9.tar.xz
