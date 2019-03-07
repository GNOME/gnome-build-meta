kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glade.git
  track: master
depends:
- sdk/gtk+-3.bst
- filename: sdk/cantarell-fonts.bst
  type: runtime
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
- filename: base.bst
  junction: freedesktop-sdk.bst
