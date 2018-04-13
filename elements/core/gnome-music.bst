kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-music/3.28/gnome-music-3.28.1.tar.xz
  kind: tar
  ref: ddf9d53c99791cb00e641aba1205efc8b3ec23a83ba54e7a134988435db37c75
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
