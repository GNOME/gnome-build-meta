kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.30/simple-scan-3.30.1.tar.xz
  ref: db96e36ad733f9911fc73c7494aee57247f2d79a1b3bafc5b818a9f0f5aea169
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
