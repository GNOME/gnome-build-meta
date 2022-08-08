kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libbluray/1.3.2/libbluray-1.3.2.tar.bz2
  ref: 456814db9f07c1eecdef7e840fcbb20976ef814df875428bfb81ecf45851f170
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-bdjava-jar
