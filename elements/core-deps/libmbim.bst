depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: eb494fee2c200daf4f5cc8a40061d24a3dfafe8c59151c95c6a826fd96dcb262
  url: http://www.freedesktop.org/software/libmbim/libmbim-1.16.2.tar.xz
