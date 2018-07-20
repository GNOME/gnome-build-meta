kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.29/gnome-music-3.29.2.1.tar.xz
  ref: 2bace988e48e5d785fe4845804938c2198ea8d4dea0fd3e9f01a8536d2e121ef
depends:
- core-deps/gobject-introspection.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/pygobject.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/gvfs.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
