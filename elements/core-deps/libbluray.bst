kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libbluray/1.4.0/libbluray-1.4.0.tar.xz
  ref: 77937baf07eadda4b2b311cf3af4c50269d2ea3165041f5843d96476c4c92777
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-bdjava-jar
