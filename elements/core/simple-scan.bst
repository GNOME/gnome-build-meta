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
- core-deps/vala.bst
- core-deps/sane-backends.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
