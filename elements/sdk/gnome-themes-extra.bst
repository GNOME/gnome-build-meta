kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-themes-extra.git
  track: master
depends:
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- base.bst
variables:
  conf-local: --disable-gtk2-engine
