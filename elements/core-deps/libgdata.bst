kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgdata/0.17/libgdata-0.17.9.tar.xz
  ref: 85c4f7674c0098ffaf060ae01b6b832cb277b3673d54ace3bdedaad6b127453a
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
