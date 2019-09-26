kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-multi-writer.git
  track: master
depends:
- core-deps/libgusb.bst
- core-deps/udisks2.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- freedesktop-sdk.bst:bootstrap-import.bst
