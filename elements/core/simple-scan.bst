kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.29/simple-scan-3.29.4.tar.xz
  ref: 6164950e88361f3ad9cd696a2342a963672d9bdb1e6aa00ac2304d86a976b560
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
