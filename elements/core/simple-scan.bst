kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.29/simple-scan-3.29.92.tar.xz
  ref: 8f409296993061cbf9911f624739a8fe1bd158cde8f8e77dba086e4f5c93a3f8
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
