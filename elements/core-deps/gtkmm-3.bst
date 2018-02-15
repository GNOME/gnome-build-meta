kind: autotools
sources:
- url: https://download.gnome.org/sources/gtkmm/3.22/gtkmm-3.22.2.tar.xz
  kind: tar
  ref: 91afd98a31519536f5f397c2d79696e3d53143b80b75778521ca7b48cb280090
depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/pangomm-1.4.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
