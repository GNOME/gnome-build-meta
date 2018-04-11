kind: autotools
sources:
- kind: git
  url: git_gnome_org:glade
  track: master
depends:
- core-deps/gtk+-3.bst
- filename: core/adwaita-icon-theme.bst
  type: runtime
