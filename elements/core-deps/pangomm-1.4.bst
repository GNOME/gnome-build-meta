kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pangomm/2.40/pangomm-2.40.1.tar.xz
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
