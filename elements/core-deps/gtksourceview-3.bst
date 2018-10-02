kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/3.24/gtksourceview-3.24.9.tar.xz
  ref: 699d76a453e6a3d3331906346e3dbfa25f2cbc9ec090e46635e9c6bb595e07c2
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
