kind: autotools
sources:
- kind: tar
  url: sourceforge_net:linuxwacom/files/libwacom/libwacom-0.23.tar.bz2
  ref: a08ac59ff26dbdf5888a6ad7bd97a66741807cda6bb1c7e7f299a555129c3162
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
