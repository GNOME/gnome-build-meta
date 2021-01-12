kind: meson

sources:
- kind: tar
  url: https://download.gimp.org/pub/gegl/0.4/gegl-0.4.26.tar.xz
  ref: 0f371e2ed2b92162fefd3dde743e648ca08a6a1b2b05004867fbddc7e211e424
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
