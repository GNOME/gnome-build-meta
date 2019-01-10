kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:upower/upower.git
  track: master
depends:
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
