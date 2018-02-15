kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-themes-standard/3.22/gnome-themes-standard-3.22.3.tar.xz
  kind: tar
  ref: 61dc87c52261cfd5b94d65e8ffd923ddeb5d3944562f84942eeeb197ab8ab56a
depends:
- core-deps/cantarell-fonts.bst
- core-deps/gtk+-3.bst
- core-deps/librsvg.bst
- base.bst
variables:
  conf-local: --disable-gtk2-engine
