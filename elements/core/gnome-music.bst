kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-music/3.28/gnome-music-3.28.2.1.tar.xz
  ref: bbf4556b77a97d86b586eeb3015482d800c46bcd293adbda0438ca0871bc9b26
depends:
- core-deps/gobject-introspection.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libmediaart.bst
- core-deps/pygobject.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/adwaita-icon-theme.bst
- core/gvfs.bst
- base.bst
