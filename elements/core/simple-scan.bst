kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.28/simple-scan-3.28.1.tar.xz
  ref: cacced1d26c23de677d50661d38398526d87cd204f0f1ea7711bd0ba49fa1b90
depends:
- core-deps/PackageKit.bst
- core-deps/colord-gtk.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgusb.bst
- core-deps/meson.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- base.bst
