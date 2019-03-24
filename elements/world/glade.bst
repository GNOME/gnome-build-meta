kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glade.git
  track: master
depends:
- filename: sdk/cantarell-fonts.bst
  type: runtime
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
