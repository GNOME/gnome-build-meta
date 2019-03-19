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
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
