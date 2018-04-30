kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-klotski
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- base.bst
