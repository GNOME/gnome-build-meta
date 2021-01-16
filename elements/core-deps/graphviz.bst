kind: autotools

sources:
- kind: tar
  url: https://www2.graphviz.org/Packages/stable/portable_source/graphviz-2.44.0.tar.gz
  ref: 9aabd13a8018b708ab3c822de2326c19d0a52ed59f50a6b0f9318c07e2a6d93b
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
