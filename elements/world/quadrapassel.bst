kind: autotools
sources:
- kind: git
  url: git_gnome_org:quadrapassel
  track: master
depends:
- sdk/clutter.bst
- sdk/clutter-gtk.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libmanette.bst
- base.bst
