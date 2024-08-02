kind: autotools
sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_52-5-g634340d31177c02ccdb43171e37291948e7f8974
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
