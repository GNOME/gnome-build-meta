kind: autotools
sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_53-1-g4f91db74a46dbfd1b9e1883c1c10c512de273a6a
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
