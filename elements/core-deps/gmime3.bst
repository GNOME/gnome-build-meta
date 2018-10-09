kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gmime/3.2/gmime-3.2.0.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
