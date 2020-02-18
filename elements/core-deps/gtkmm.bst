kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.97/gtkmm-3.97.1.tar.xz
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/atkmm.bst
- core-deps/cairomm.bst
- core-deps/pangomm.bst
- sdk/glib.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-maintainer-mode
