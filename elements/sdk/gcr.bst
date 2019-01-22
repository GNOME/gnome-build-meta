kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gcr/3.28/gcr-3.28.1.tar.xz
  ref: 95204aa2111c301778ebfbe60975ce3ed698c958430ffcc2a785ac5e593d168b
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
