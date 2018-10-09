kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/3.24/gtksourceview-3.24.9.tar.xz
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
