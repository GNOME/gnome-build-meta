kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libchamplain/0.12/libchamplain-0.12.16.tar.xz
  ref: 4a7e31cf7889669aebf04631543af64435edd989685159b804911c6005db908d
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
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
