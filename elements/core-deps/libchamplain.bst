kind: autotools
sources:
- kind: git
  url: git_gnome_org:libchamplain
  track: master
depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- base.bst
variables:
  conf-local: --enable-vala
