kind: meson

sources:
- kind: tar
  url: gimp:gegl/0.4/gegl-0.4.36.tar.xz

  ref: 6fd58a0cdcc7702258adaeffb573a389228ae8f0eff47578efda2309b61b2ca6
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/LibRaw.bst
- core-deps/babl.bst
- core-deps/gexiv2.bst
- core-deps/graphviz.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:components/sdl2.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Djasper=disabled
    -Dlensfun=disabled
    -Dlibav=disabled
    -Dlibspiro=disabled
    -Dlibv4l=disabled
    -Dlibv4l2=disabled
    -Dlua=disabled
    -Dmaxflow=disabled
    -Dmrg=disabled
    -Dopenexr=disabled
    -Dpygobject=disabled
    -Dumfpack=disabled
