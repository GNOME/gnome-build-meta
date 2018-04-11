kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-characters
  track: master
depends:
- core-deps/gjs.bst
- core-deps/gtk+-3.bst
- core/adwaita-icon-theme.bst
- base.bst
