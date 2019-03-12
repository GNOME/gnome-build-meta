kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgtop/2.40/libgtop-2.40.0.tar.xz
depends:
- sdk/glib.bst
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
