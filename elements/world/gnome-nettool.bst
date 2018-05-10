kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-nettool
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgtop.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
