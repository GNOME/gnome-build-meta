kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-music
  track: master
depends:
- core-deps/grilo.bst
- core-deps/grilo-plugins.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- core-deps/tracker-miners.bst
- sdk/adwaita-icon-theme.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/pygobject.bst
- base.bst
