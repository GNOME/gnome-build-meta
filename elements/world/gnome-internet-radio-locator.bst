kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-internet-radio-locator.git
  track: master
depends:
- core-deps/geocode-glib.bst
- core-deps/libchamplain.bst
- core/gnome-maps.bst
- sdk/cantarell-fonts.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/pango.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
