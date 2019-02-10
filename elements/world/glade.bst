kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/glade
  track: master
depends:
- filename: sdk/cantarell-fonts.bst
  type: runtime
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
