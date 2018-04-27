kind: autotools
sources:
- kind: git
  url: github_com:hughsie/colord-gtk.git
  track: master
depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-vala
