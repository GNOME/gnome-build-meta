kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgtop/2.39/libgtop-2.39.91.tar.xz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/texinfo.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
