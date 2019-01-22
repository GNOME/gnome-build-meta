kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cairomm/1.12/cairomm-1.12.0.tar.xz
  ref: 6ccbc0ff58ef833c06068fd17bf866c9a2198bb5724f9de36566f2cb06fd4b13
depends:
- core-deps/libsigcplusplus-2.0.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
