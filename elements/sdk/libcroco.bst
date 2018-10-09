kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.12.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
