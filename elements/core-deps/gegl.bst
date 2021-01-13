kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/gegl/0.4/gegl-0.4.26.tar.xz
  ref: 0f371e2ed2b92162fefd3dde743e648ca08a6a1b2b05004867fbddc7e211e424
depends:
- core-deps/babl.bst
- core-deps/gexiv2.bst
- core-deps/poppler.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librsvg.bst
- sdk/pango.bst
- filename: sdk/python2.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/sdl2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dgraphviz=disabled
    -Djasper=disabled
    -Dlensfun=disabled
    -Dlibav=disabled
    -Dlibraw=disabled
    -Dlibspiro=disabled
    -Dlibv4l=disabled
    -Dlibv4l2=disabled
    -Dlua=disabled
    -Dmrg=disabled
    -Dopenexr=disabled
    -Dpygobject=disabled
    -Dumfpack=disabled
    -Dwebp=disabled
