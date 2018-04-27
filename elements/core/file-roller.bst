kind: meson
sources:
- kind: git
  url: git_gnome_org:file-roller
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- base.bst
