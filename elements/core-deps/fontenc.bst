kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/lib/libfontenc-1.1.3.tar.bz2
build-depends:
- freedesktop-sdk.bst:components/xorg-proto-xorgproto.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
