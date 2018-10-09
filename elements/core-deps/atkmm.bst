kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/atkmm/2.27/atkmm-2.27.1.tar.xz
depends:
- core-deps/glibmm.bst
- sdk/atk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
