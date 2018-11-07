kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/totem/3.26/totem-3.26.2.tar.xz
  ref: cf8c49941f37e326353e5ede621350f78d2658f7cef73bf92aeedfa1a98e9ed2
depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- filename: desktop/gstreamer-plugins-bad.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer-plugins-base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer-plugins-good.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Denable-vala=no
