kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20201225/mobile-broadband-provider-info-20201225.tar.xz
  ref: 0d7fc04df41772f94eb813bb9a1dcfd42fa6f44df60005d5535a54d949143dbd
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
