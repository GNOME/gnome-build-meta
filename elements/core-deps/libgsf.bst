kind: autotools
sources:
- kind: git_tag
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_50-7-g1df9891a5f117bc1797b1d3beba865db1b8e2b8e
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
