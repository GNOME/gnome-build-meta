kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/lib/libXfont2-2.0.3.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/font-util.bst
- core-deps/fontenc.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
