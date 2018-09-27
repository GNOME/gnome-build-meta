kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/4.0/gtksourceview-4.0.3.tar.xz
  ref: 3d55a7b82841d96bf414ced2e1e912d4881c9ba2f7b74f0ff8aad636087f9d73
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
