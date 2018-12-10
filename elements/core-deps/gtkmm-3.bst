kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtkmm/3.22/gtkmm-3.22.3.tar.xz
  ref: 178c2728a4f37eae986eabdd758547cd7579d15000048596fa6bbc25cbba5c90
depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/pangomm-1.4.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
