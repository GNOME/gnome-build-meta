kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/atkmm/2.24/atkmm-2.24.2.tar.xz
depends:
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
