kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.24/gtkmm-3.24.2.tar.xz
depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/pangomm-1.4.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
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
