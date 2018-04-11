kind: autotools
sources:
- kind: git
  url: git_gnome_org:adwaita-icon-theme
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- base.bst
