kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cairomm/1.15/cairomm-1.15.4.tar.xz
depends:
- core-deps/libsigcplusplus.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
