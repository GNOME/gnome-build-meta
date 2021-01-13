kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gtkmm/4.0/gtkmm-4.0.0.tar.xz
  ref: 3105adb76b738e4af5c0be7b1915f8e39de15474fcfdced9f5a59a2d9b52f83e
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
