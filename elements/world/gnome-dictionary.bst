kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-dictionary
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- base.bst
