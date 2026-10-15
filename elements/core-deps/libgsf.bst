kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgsf/1.14/libgsf-1.14.60.tar.xz
  ref: 83e12c36a099a8a7019bf425e2c24af66eeb2ef5874251e694431a07d9805dae
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
