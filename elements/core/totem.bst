kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/totem
  track: master
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
  meson-local: -Denable-vala=no
