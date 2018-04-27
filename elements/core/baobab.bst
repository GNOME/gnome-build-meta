kind: meson
sources:
- kind: git
  url: git_gnome_org:baobab
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- base.bst
