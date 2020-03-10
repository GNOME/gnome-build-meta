kind: meson
sources:
- kind: tar
  url: gnome_downloads:libpeas/1.26/libpeas-1.26.0.tar.xz
  ref: a976d77e20496479a8e955e6a38fb0e5c5de89cf64d9f44e75c2213ee14f7376
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
