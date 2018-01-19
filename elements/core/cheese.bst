kind: autotools
sources:
- kind: git
  url: git_gnome_org:cheese
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
- core-deps/libgudev.bst
- core-deps/librsvg.bst
- core-deps/vala.bst
- core/gnome-desktop.bst
- base.bst
