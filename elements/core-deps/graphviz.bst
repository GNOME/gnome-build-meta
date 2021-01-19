kind: autotools

sources:
- kind: tar
  url: gitlab_com:graphviz/graphviz/-/archive/2.46.0/graphviz-2.46.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pango.bst
- sdk/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
variables:
  conf-local: >-
    --disable-dependency-tracking
    --disable-silent-rules
    --disable-sharp
    --disable-ocaml
    --disable-r
    --without-lasi
    --without-gts
    --without-ming
    --without-devil
    --without-qt
    --with-pangocairo
    --with-gdk-pixbuf
