kind: autotools
sources:
- url: https://download.gnome.org/sources/pangomm/2.40/pangomm-2.40.1.tar.xz
  kind: tar
  ref: 9762ee2a2d5781be6797448d4dd2383ce14907159b30bc12bf6b08e7227be3af
depends:
- core-deps/atk.bst
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
