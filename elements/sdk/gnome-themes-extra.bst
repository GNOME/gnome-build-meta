kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-themes-extra.git
  track: master
depends:
- sdk/cantarell-fonts.bst
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
variables:
  conf-local: --disable-gtk2-engine
