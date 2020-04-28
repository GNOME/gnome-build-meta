kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.82.0.tar.xz
  ref: 234f8e573ea57fb6a008e7c1e56bfae1af5d1adf0e65f47555e1ae103874e4df
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- sdk/gobject-introspection.bst
- sdk/openjpeg.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:bootstrap-import.bst
