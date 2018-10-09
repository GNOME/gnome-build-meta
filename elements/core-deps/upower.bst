kind: autotools
sources:
- kind: tar
  url: https://upower.freedesktop.org/releases/upower-0.99.7.tar.xz
depends:
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
