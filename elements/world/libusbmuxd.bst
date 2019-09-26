kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libusbmuxd-1.0.10.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- world/plist.bst
- freedesktop-sdk.bst:bootstrap-import.bst
