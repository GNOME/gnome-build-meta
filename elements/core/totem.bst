kind: meson
sources:
- url: https://download.gnome.org/sources/totem/3.26/totem-3.26.0.tar.xz
  kind: tar
  ref: e32fb9a68097045e75c87ad1b8177f5c01aea2a13dcb3b2e71a0f9570fe9ee13
depends:
- core-deps/appstream-glib.bst
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gst-plugins-bad.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/iso-codes.bst
- core-deps/libpeas.bst
- core-deps/meson.bst
- core-deps/totem-pl-parser.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dwith-plugins=none
