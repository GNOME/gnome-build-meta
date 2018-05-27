kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glade
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/gnome-common.bst
- filename: core/adwaita-icon-theme.bst
  type: runtime
