kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:upower
  track: master
depends:
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
