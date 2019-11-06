kind: cmake
sources:
- kind: tar
  url: https://poppler.freedesktop.org/poppler-0.82.0.tar.xz
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
