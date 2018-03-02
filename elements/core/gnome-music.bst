kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-music
  track: master
depends:
- core-deps/gobject-introspection.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gtk+-3.bst
- core-deps/libmediaart.bst
- core-deps/meson.bst
- core-deps/pygobject.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- core/gvfs.bst
- base.bst
