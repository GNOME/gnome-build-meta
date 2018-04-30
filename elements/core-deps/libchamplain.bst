kind: autotools
sources:
- kind: git
  url: git_gnome_org:libchamplain
  track: master
depends:
- sdk/clutter.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- base.bst
variables:
  conf-local: --enable-vala
