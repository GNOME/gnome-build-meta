kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme
  track: master
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
