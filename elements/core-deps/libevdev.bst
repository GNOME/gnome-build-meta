kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libevdev/libevdev-1.8.0.tar.xz
  ref: 20d3cae4efd277f485abdf8f2a7c46588e539998b5a08c2c4d368218379d4211
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
