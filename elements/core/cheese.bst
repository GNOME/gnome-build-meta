kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/cheese
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/glib.bst
- core-deps/gnome-video-effects.bst
- core-deps/gst-plugins-bad.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core-deps/libgudev.bst
- core-deps/librsvg.bst
- core-deps/vala.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
