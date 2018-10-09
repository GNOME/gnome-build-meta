kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.56/glibmm-2.56.0.tar.xz
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
