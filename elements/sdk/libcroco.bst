kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.12.tar.xz
  ref: ddc4b5546c9fb4280a5017e2707fbd4839034ed1aba5b7d4372212f34f84f860
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
