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
kind: meson
sources:
- kind: tar
  ref: 2cd9552237e7070f8eb950f5b9b752da96d66d04db823feea37136839a9949c6
  url: https://download.gnome.org/sources/gnome-music/3.29/gnome-music-3.29.91.tar.xz
