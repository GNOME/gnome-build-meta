kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cairomm/1.12/cairomm-1.12.0.tar.xz
  ref: 97a78bd7de6baf8af3da1f9b39f1317f8da9f1145b7694e928fbd5521da08ef6
depends:
- core-deps/libsigcplusplus-2.0.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
