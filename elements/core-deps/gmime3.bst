kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gmime/3.0/gmime-3.0.5.tar.xz
  ref: 2f5353ac1062aa58c4855cc7691a0778c84339c654301a6bc0e95ba8427b85e0
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
