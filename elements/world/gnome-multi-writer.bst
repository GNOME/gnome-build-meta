kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-multi-writer
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgusb.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
