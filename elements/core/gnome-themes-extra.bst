kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-themes-extra.git
  track: master
depends:
- core-deps/cantarell-fonts.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-gtk2-engine
