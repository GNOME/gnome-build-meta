kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:adwaita-icon-theme
  track: master
depends:
- core-deps/gnome-common.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
