kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-menus
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
