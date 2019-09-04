kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.95/gtkmm-3.95.1.tar.xz
depends:
- core-deps/atkmm.bst
- core-deps/cairomm.bst
- core-deps/pangomm.bst
- sdk/glib.bst
- sdk/gtk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
