kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-characters
  track: master
depends:
- sdk/gjs.bst
- sdk/gtk+-3.bst
- sdk/adwaita-icon-theme.bst
- base.bst
