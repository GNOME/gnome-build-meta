kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-themes-standard
  track: master
depends:
- core-deps/cantarell-fonts.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- base.bst
variables:
  conf-local: --disable-gtk2-engine
