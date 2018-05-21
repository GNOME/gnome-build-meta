kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-themes-extra.git
  track: master
depends:
- filename: sdk/gnome-common.bst
  type: build
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk2-engine
