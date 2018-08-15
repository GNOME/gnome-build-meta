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
kind: meson
sources:
- kind: tar
  ref: 60bc7a583772e080b7e61f66c197738d5541b793f3ed55acb971bbfebe3ddfd0
  url: https://download.gnome.org/sources/simple-scan/3.29/simple-scan-3.29.91.tar.xz
