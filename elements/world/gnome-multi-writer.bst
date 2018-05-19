kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-multi-writer
  track: master
depends:
- core-deps/libgusb.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
