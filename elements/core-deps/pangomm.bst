kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/pangomm/2.41/pangomm-2.41.5.tar.xz
  ref: 5131830d5b37b181ca4fa8f641ad86faa985c0bb7dcc833c98672d294367b304
depends:
- core-deps/cairomm.bst
- core-deps/glibmm.bst
- sdk/atk.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
