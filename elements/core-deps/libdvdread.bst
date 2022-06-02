kind: autotools
sources:
- kind: tar
  url: videolan:pub/videolan/libdvdread/6.1.3/libdvdread-6.1.3.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
