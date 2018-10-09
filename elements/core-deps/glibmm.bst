kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.57/glibmm-2.57.1.tar.xz
depends:
- core-deps/libsigcplusplus.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
