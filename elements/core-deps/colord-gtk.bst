kind: autotools
sources:
- kind: git
  url: github_com:hughsie/colord-gtk.git
  track: master
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
