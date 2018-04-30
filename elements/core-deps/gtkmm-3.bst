kind: autotools
sources:
- kind: git
  url: git_gnome_org:gtkmm
  track: gtkmm-3-22
depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/pangomm-1.4.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
