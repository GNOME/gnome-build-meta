kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libbluray/1.3.1/libbluray-1.3.1.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-bdjava-jar
