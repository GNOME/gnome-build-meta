kind: autotools
sources:
- kind: tar
  url: https://upower.freedesktop.org/releases/upower-0.99.7.tar.xz
  ref: 24bcc2f6ab25a2533bac70b587bcb019e591293076920f5b5e04bdedc140a401
depends:
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
