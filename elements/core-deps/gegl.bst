kind: meson
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/gegl/0.4/gegl-0.4.22.tar.xz
  ref: 23bd8bb42b20de7c2a8c314eeb5301dc20141feda20a4b1ed455020b69b73dff
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
