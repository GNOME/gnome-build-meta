kind: autotools

sources:
- kind: tar
  url: https://github.com/libimobiledevice/libusbmuxd/releases/download/2.0.2/libusbmuxd-2.0.2.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/plist.bst
- freedesktop-sdk.bst:bootstrap-import.bst
