kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtkmm/3.93/gtkmm-3.93.0.tar.xz
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
