kind: meson
sources:
- kind: git
  url: git_gnome_org:file-roller
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- core-deps/yelp-tools.bst
- base.bst
