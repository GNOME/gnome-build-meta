kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgtop/2.38/libgtop-2.38.0.tar.xz
  ref: 4f6c0e62bb438abfd16b4559cd2eca0251de19e291c888cdc4dc88e5ffebb612
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
