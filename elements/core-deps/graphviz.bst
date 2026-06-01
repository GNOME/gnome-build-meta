kind: autotools

sources:
- kind: git_repo
  url: gitlab:graphviz/graphviz.git
  track: '*.*'
  ref: 15.0.0-0-g8080495d6e6b56597ab24ed042daaf243fd0854f
# https://gitlab.com/graphviz/graphviz/-/work_items/2839
- kind: patch
  path: patches/graphviz/fix-build.patch

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/dejavu-fonts.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtool.bst

variables:
  conf-local: >-
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

public:
  bst:
    integration-commands:
    - dot -c
