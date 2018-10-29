kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.30/gnome-music-3.30.2.tar.xz
  ref: 2d01813d99e6b7758fcd9609c16fb0deecb76ba4ef939fdd8a301c8f736a2fb5
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
