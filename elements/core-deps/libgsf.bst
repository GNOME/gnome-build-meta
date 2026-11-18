kind: autotools

sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_60-21-g9d01d000032f7e1f4d71cc70edc59f9685819f7d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --without-bonobo
    --without-gnome-vfs
    --enable-introspection
