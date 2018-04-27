kind: meson
sources:
- kind: git
  url: git_gnome_org:simple-scan
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/colord-gtk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libgusb.bst
- sdk/vala.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- base.bst
