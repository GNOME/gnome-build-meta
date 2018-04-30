kind: autotools
sources:
- kind: git
  url: git_gnome_org:adwaita-icon-theme
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- base.bst
