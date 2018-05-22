kind: meson
sources:
- kind: git
  url: git_gnome_org:ghex
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
