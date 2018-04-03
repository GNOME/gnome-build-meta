kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-chess
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- base.bst
