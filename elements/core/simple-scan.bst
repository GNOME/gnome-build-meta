kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.30/simple-scan-3.30.1.1.tar.xz
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
- filename: sdk/yelp-tools.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
