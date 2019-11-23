kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libchamplain/0.12/libchamplain-0.12.20.tar.xz
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
