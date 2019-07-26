kind: autotools
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/upower/upower/uploads/2282c7c0e53fb31816b824c9d1f547e8/upower-0.99.9.tar.xz
depends:
- filename: core-deps/intltool.bst
  type: build
- core-deps/libgudev.bst
- core-deps/libusb.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
