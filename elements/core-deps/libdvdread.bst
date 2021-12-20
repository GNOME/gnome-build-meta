kind: autotools
sources:
- kind: tar
  url: http://download.videolan.org/pub/videolan/libdvdread/6.1.2/libdvdread-6.1.2.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
