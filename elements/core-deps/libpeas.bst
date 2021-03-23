kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/1.30/libpeas-1.30.0.tar.xz
  ref: 0bf5562e9bfc0382a9dcb81f64340787542568762a3a367d9d90f6185898b9a3
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    -Dpython3=true
    -Dintrospection=true
    -Dvapi=true
    -Dwidgetry=true
    -Dgtk_doc=true
