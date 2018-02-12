kind: meson
sources:
- kind: git
  url: git_gnome_org:simple-scan
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/colord-gtk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgusb.bst
- core-deps/meson.bst
- core-deps/vala.bst
- base.bst
