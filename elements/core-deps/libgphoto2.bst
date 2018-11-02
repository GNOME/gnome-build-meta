kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:gphoto/libgphoto/2.5.16/libgphoto2-2.5.16.tar.bz2
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: auto-aux
