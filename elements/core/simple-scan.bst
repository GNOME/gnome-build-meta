kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/simple-scan/3.30/simple-scan-3.30.2.tar.xz
  ref: 71144fa985846e974dbe486bfab825694fc2a4e728fbd1ba4d37774b65db7636
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
