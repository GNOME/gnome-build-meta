kind: meson
sources:
- kind: git
  url: git_gnome_org:bijiben
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/clutter-gtk.bst
- core-deps/evolution-data-server.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/tracker.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
