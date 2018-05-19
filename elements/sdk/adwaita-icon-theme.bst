kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme
  track: master
depends:
- sdk/gnome-common.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
