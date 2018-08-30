kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gtksourceview/4.0/gtksourceview-4.0.2.tar.xz
  ref: 15829fc728f74e2005e2fc65c2aada4b223f3b361b2200b7e02ff7a9014b5fac
depends:
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
