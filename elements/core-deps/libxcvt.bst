kind: meson

sources:
- kind: tar
  url: freedesktop:xorg/lib/libxcvt/-/archive/libxcvt-0.1.1/libxcvt-libxcvt-0.1.1.tar.bz2

  ref: 5775af5d58de113a34bfcc6c9d9ad9ed59c7cd403cd251b93c4df2e21c6d2650
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
