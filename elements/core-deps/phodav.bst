kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/phodav/2.2/phodav-2.2.tar.xz
  ref: 080305dc9e804562f200ffc8c7d345c76754fce9cb01489dddb1b2c52c0557c1
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
