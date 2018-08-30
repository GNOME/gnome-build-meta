kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtkmm/3.93/gtkmm-3.93.0.tar.xz
  ref: 52d3e8327ac420cfa0aaedff177f755684952b5606496caee1330409f2ede8e5
depends:
- core-deps/atkmm.bst
- core-deps/cairomm.bst
- core-deps/gtk+.bst
- core-deps/pangomm.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
