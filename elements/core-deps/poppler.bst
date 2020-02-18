kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.82.0.tar.xz
  ref: 234f8e573ea57fb6a008e7c1e56bfae1af5d1adf0e65f47555e1ae103874e4df
depends:
- sdk/gobject-introspection.bst
- sdk/openjpeg.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: components/freetype.bst
  junction: freedesktop-sdk.bst
- filename: components/jpeg.bst
  junction: freedesktop-sdk.bst
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
