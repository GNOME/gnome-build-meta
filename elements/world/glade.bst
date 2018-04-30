kind: autotools
sources:
- kind: git
  url: git_gnome_org:glade
  track: master
depends:
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
- sdk/gtk+-3.bst
