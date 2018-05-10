kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.62.0.tar.xz
depends:
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/openjpeg.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
