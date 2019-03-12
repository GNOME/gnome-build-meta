kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgrss/0.7/libgrss-0.7.0.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
