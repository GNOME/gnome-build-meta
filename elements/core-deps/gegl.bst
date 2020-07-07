kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/gegl/0.4/gegl-0.4.24.tar.xz
  ref: 7765499f27341b0d16032e665319cbc12876483ff6a944fcdf24a9c58e3e254a
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/babl.bst
- core-deps/gexiv2.bst
- core-deps/libraw.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/poppler.bst
- freedesktop-sdk.bst:components/sdl2.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgraphviz=disabled
    -Djasper=disabled
    -Dlensfun=disabled
    -Dlibav=disabled
    -Dlibspiro=disabled
    -Dlibv4l=disabled
    -Dlibv4l2=disabled
    -Dlua=disabled
    -Dmrg=disabled
    -Dopenexr=disabled
    -Dpygobject=disabled
    -Dumfpack=disabled
    -Dwebp=disabled
