kind: autotools

sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_59-2-ga8e25560b74f84c3f86df6ca0ac59195fa5af68a

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
