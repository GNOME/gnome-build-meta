kind: autotools
sources:
- url: https://download.gnome.org/sources/pangomm/2.41/pangomm-2.41.5.tar.xz
  kind: tar
  ref: 5131830d5b37b181ca4fa8f641ad86faa985c0bb7dcc833c98672d294367b304
depends:
- core-deps/atk.bst
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
