kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtkmm
  track: master
depends:
- core-deps/atkmm.bst
- core-deps/cairomm.bst
- core-deps/glib.bst
- core-deps/gtk+.bst
- core-deps/pangomm.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
