kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-logs
  track: master
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- base.bst
