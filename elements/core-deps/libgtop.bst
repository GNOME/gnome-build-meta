kind: autotools
sources:
- url: https://download.gnome.org/sources/libgtop/2.38/libgtop-2.38.0.tar.xz
  kind: tar
  ref: 4f6c0e62bb438abfd16b4559cd2eca0251de19e291c888cdc4dc88e5ffebb612
depends:
- core-deps/glib.bst
- base.bst
environment:
  CC: gcc -std=c99
