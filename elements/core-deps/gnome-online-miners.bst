kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-miners/3.30/gnome-online-miners-3.30.0.tar.xz
  ref: 2c29a9922b1d32aeb0e615db6717c8e060417d3b6568ed617c9817fb39af4a5e
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/libgdata.bst
- core-deps/libgfbgraph.bst
- core-deps/libzapojit.bst
- core-deps/tracker.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
