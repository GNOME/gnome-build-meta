kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-logs
  track: master
depends:
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
