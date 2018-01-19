kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-sound-recorder
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gst-plugins-base.bst
- core-deps/gst-plugins-good.bst
- core-deps/gstreamer.bst
- core-deps/gtk+-3.bst
- base.bst
