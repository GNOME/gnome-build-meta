kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.30/gnome-music-3.30.0.tar.xz
  ref: 1d38dd569ed0d27107769ac40b9be4cc75e08cf888d42e1250a0a4eec69a8955
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
