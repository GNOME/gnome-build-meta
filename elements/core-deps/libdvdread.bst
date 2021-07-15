kind: autotools
sources:
- kind: tar
  url: http://download.videolan.org/pub/videolan/libdvdread/6.1.2/libdvdread-6.1.2.tar.bz2
  ref: cc190f553758ced7571859e301f802cb4821f164d02bfacfd320c14a4e0da763
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
