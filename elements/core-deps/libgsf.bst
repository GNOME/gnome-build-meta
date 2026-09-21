kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgsf/1.14/libgsf-1.14.59.tar.xz
  ref: 0d03cb6fadfe735caa13498a024ccd8fdb6cab77df6d9d283a64410c96f2fa49
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --without-bonobo
    --without-gnome-vfs
    --enable-introspection
