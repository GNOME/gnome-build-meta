kind: autotools
sources:
- kind: tar
  url: https://www.freedesktop.org/software/colord/releases/colord-gtk-0.1.26.tar.xz
depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
