kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-music
  track: master
depends:
- sdk/gobject-introspection.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- sdk/gtk+-3.bst
- core-deps/libmediaart.bst
- sdk/pygobject.bst
- core-deps/tracker-miners.bst
- core-deps/tracker.bst
- sdk/adwaita-icon-theme.bst
- sdk/gvfs.bst
- base.bst
