kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-nibbles
  track: master
depends:
- core-deps/libgee.bst
- sdk/clutter.bst
- sdk/clutter-gtk.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- base.bst
