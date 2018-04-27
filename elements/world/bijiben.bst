kind: meson
sources:
- kind: git
  url: git_gnome_org:bijiben
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/clutter-gtk.bst
- core-deps/evolution-data-server.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/tracker.bst
- base.bst
