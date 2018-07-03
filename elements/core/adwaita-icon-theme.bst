kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- filename: core/hicolor-icon-theme.bst
  type: runtime
- filename: base.bst
  junction: freedesktop-sdk.bst
