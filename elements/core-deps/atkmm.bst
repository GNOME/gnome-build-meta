kind: autotools
sources:
- url: https://download.gnome.org/sources/atkmm/2.25/atkmm-2.25.4.tar.xz
  kind: tar
  ref: 85b0c38cde4bc11e54f63e53d3b02b90dff96c94cdcc60674d1da2b3f2753a6b
depends:
- core-deps/atk.bst
- core-deps/glibmm.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
