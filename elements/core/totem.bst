kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem/3.26/totem-3.26.1.tar.xz
  ref: 298160c9ee8d34f1ac6586c69e0440e3586a75fd4b1719d79f908edb9c00c382
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
variables:
  meson-local: -Dwith-plugins=none
