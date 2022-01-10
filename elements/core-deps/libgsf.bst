kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgsf/1.14/libgsf-1.14.48.tar.xz
  ref: ff86d7f1d46dd0ebefb7bd830a74a41db64362b987bf8853fff6ab4c1132b837
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --without-bonobo
    --without-gnome-vfs
    --enable-introspection
