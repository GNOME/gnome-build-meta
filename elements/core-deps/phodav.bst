kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/phodav/2.2/phodav-2.2.tar.xz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
