kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgsf/1.14/libgsf-1.14.46.tar.xz
  ref: ea36959b1421fc8e72caa222f30ec3234d0ed95990e2bf28943a85f33eadad2d
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
  conf-local: --without-bonobo --without-gnome-vfs --enable-introspection
