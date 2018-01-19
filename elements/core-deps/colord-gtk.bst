kind: autotools
sources:
- kind: git
  url: github_com:hughsie/colord-gtk.git
  track: master
depends:
- core-deps/colord.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-vala
