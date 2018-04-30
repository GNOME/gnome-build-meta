kind: meson
sources:
- kind: git
  url: git_gnome_org:totem
  track: master
depends:
- core-deps/grilo.bst
- core-deps/grilo-plugins.bst
- core-deps/libpeas.bst
- core-deps/totem-pl-parser.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  meson-local: -Dwith-plugins=none
