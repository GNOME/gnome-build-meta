kind: meson
sources:
- kind: git
  url: git_gnome_org:five-or-more
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- core-deps/yelp-tools.bst
- world/libgnome-games-support.bst
- base.bst
