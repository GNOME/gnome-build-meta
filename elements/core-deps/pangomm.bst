kind: autotools
sources:
- url: https://download.gnome.org/sources/pangomm/2.41/pangomm-2.41.4.tar.xz
  kind: tar
  ref: db36e8d09c8a4a16b07cd00715c10c2bc8dd99bb1db9b76413426694148db7ef
depends:
- core-deps/atk.bst
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- core-deps/pango.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
