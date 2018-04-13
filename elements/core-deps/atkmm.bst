kind: autotools
sources:
- url: https://download.gnome.org/sources/atkmm/2.27/atkmm-2.27.1.tar.xz
  kind: tar
  ref: cf40bca4ae917bdc2a335cd8c9a9ad84859d8cfb4f8e3dd7741676948e28338c
depends:
- core-deps/atk.bst
- core-deps/glibmm.bst
- base.bst
variables:
  conf-local: --enable-maintainer-mode
