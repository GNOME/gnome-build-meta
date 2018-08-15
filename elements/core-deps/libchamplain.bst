depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 4a7e31cf7889669aebf04631543af64435edd989685159b804911c6005db908d
  url: https://download.gnome.org/sources/libchamplain/0.12/libchamplain-0.12.16.tar.xz
variables:
  conf-local: --enable-vala
