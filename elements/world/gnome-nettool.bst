kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-nettool
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libgtop.bst
- sdk/yelp-tools.bst
- base.bst
