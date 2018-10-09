kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgrss/0.7/libgrss-0.7.0.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
