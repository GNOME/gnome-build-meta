kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-sound-recorder
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- base.bst
