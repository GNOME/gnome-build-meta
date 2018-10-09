kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/libmbim/libmbim-1.16.2.tar.xz
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
