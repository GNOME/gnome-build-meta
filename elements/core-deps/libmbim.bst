kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/libmbim/libmbim-1.16.2.tar.xz
  ref: eb494fee2c200daf4f5cc8a40061d24a3dfafe8c59151c95c6a826fd96dcb262
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
