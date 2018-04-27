kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-chess
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- base.bst
