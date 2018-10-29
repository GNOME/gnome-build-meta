kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cairomm/1.12/cairomm-1.12.0.tar.xz
  ref: a54ada8394a86182525c0762e6f50db6b9212a2109280d13ec6a0b29bfd1afe6
depends:
- core-deps/libsigcplusplus-2.0.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
