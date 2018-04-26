kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:upower
  track: master
depends:
- core-deps/gobject-introspection.bst
- core-deps/libgudev.bst
- core-deps/libusb.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
