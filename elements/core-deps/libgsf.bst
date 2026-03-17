kind: autotools
sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_56-2-gebf17a195ae5da24a46c618a4e11770a483dc8cc
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
