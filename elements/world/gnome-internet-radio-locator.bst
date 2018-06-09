kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-internet-radio-locator.git
  track: master
depends:
- core/gnome-maps.bst
- core-deps/cantarell-fonts.bst
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/geocode-glib.bst
- core-deps/libchamplain.bst
- core-deps/gstreamer.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gst-plugins-bad.bst
- core-deps/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
