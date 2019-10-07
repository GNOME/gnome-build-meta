kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:gphoto/libgphoto/2.5.16/libgphoto2-2.5.16.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
