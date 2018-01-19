kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-robots
  track: master
depends:
- apps/libgnome-games-support.bst
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- base.bst
