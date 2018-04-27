kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-nibbles
  track: master
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- core-deps/libgee.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- base.bst
