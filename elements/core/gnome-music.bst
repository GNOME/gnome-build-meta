kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-music/3.27/gnome-music-3.27.90.tar.xz
  kind: tar
  ref: 48ae4395e9a21751e2a200734e2fb5f82d574bcd373e415d629da8f3aab92c9a
depends:
- core-deps/gobject-introspection.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libmediaart.bst
- core-deps/pygobject.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/gvfs.bst
- base.bst
