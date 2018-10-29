kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libqmi/libqmi-1.20.2.tar.xz
  ref: c73459ca8bfe1213f8047858d4946fc1f58e164d4f488a7a6904edee25e2ca44
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
