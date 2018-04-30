kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-nettool
  track: master
depends:
- core-deps/libgtop.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- base.bst
