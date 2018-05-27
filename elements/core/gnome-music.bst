kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:gnome-music
  track: master
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
