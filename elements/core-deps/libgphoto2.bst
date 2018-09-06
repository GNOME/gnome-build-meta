kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:gphoto/libgphoto/2.5.16/libgphoto2-2.5.16.tar.bz2
  ref: e757416d1623e01a9d0d294b2e790162e434c0964f50d3b7ff1a3424b62a2906
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: auto-aux
