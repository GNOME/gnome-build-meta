kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgtop/2.38/libgtop-2.38.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
