kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.24/gtkmm-3.24.2.tar.xz
  ref: 7c1ca864f607519305d676cf624e04bf0bfd2b9117521be0ab86eb3925585772
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
