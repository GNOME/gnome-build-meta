kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.30/gnome-music-3.30.1.tar.xz
  ref: 0415d832cb393f0378d5ce3858f78cd7028d5fe5b669dbaea4c280612c51a3d9
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
