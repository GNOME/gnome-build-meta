kind: meson
sources:
- kind: git
  url: git_gnome_org:bijiben
  track: master
depends:
- core-deps/evolution-data-server.bst
- core-deps/tracker.bst
- sdk/WebKitGTK+.bst
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
