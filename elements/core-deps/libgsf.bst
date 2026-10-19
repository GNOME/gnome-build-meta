kind: autotools

sources:
- kind: git_repo
  url: gnome:libgsf.git
  track: master
  ref: LIBGSF_1_14_60-10-g2105d1c43354a8bb0c294599713354df52911f7b

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
