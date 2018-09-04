kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.30/simple-scan-3.30.0.tar.xz
  ref: 3ce358bd81c605891d6e09d7c1ebcfb27b28017ca23ade18000a9c4d0c8fcb22
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
