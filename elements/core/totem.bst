kind: meson
sources:
- kind: git
  url: git_gnome_org:totem
  track: master
depends:
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
variables:
  meson-local: -Dwith-plugins=none
