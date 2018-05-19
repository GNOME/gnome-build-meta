kind: autotools
sources:
- kind: git
  url: git_gnome_org:adwaita-icon-theme
  track: master
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
