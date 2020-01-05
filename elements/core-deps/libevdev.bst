kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libevdev/libevdev-1.8.0.tar.xz
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
