kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.62.0.tar.xz
  ref: 5b9a73dfd4d6f61d165ada1e4f0abd2d420494bf9d0b1c15d0db3f7b83a729c6
depends:
- core-deps/openjpeg.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
