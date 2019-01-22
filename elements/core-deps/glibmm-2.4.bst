kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.56/glibmm-2.56.1.tar.xz
  ref: e724b7f95db18d9ceb43807ecc6403272006705d5aa03ef02032a1646967d4aa
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
