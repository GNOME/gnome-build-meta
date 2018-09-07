kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.62.0.tar.xz
depends:
- core-deps/openjpeg.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
