kind: meson
sources:
- kind: tar
  url: https://download.gimp.org/pub/gegl/0.4/gegl-0.4.22.tar.xz
  ref: 1888ec41dfd19fe28273795c2209efc1a542be742691561816683990dc642c61
depends:
- core-deps/babl.bst
- core-deps/gexiv2.bst
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
