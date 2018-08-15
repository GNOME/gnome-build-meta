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
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: cf8c49941f37e326353e5ede621350f78d2658f7cef73bf92aeedfa1a98e9ed2
  url: https://download.gnome.org/sources/totem/3.26/totem-3.26.2.tar.xz
variables:
  meson-local: -Dwith-plugins=none
