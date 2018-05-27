kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gnome-autoar
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
