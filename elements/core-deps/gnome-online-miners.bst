kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-online-miners/3.29/gnome-online-miners-3.29.90.tar.xz
  ref: 5bdb3f12483205f37d9804e11186c7b8a56553200fc436adedf93ff74387581e
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
