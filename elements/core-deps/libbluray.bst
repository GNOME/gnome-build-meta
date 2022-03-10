kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libbluray/1.3.1/libbluray-1.3.1.tar.bz2
  ref: c24b0f41c5b737bbb65c544fe63495637a771c10a519dfc802e769f112b43b75
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-bdjava-jar
