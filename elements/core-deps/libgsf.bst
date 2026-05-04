kind: autotools
sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_58-3-g2f9dc3a755bb2a421b4e3b3d9183b6c22c90b09f
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
