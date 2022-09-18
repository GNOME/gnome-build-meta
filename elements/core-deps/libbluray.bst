kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libbluray/1.3.3/libbluray-1.3.3.tar.bz2
  ref: 58ff52cdcee64c55dcc3c777a1c39fb41abd951b927978e4d2b6811b9193a488
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-bdjava-jar
