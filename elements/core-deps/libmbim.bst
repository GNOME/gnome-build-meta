kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/libmbim/libmbim-1.16.0.tar.xz
  ref: c8ca50beeddd4b43309df5b698917268303bf176cea58fe4fe53d5bf0e93fac2
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
