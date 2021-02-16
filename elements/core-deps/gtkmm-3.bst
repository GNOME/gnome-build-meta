kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtkmm/3.24/gtkmm-3.24.3.tar.xz
  ref: 60497c4f7f354c3bd2557485f0254f8b7b4cf4bebc9fee0be26a77744eacd435
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/atkmm-1.6.bst
- core-deps/cairomm-1.0.bst
- core-deps/pangomm-1.4.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
