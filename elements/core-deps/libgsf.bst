kind: autotools
sources:
- kind: git_tag
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_50-6-gc6d8737a13f3c8a78b1be1b47c582495ed251ec0
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
