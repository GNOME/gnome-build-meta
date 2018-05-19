kind: meson
sources:
- kind: git
  url: git_gnome_org:simple-scan
  track: master
depends:
- core-deps/PackageKit.bst
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
