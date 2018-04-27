kind: autotools
sources:
- kind: git
  url: git_gnome_org:cheese
  track: master
depends:
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- core-deps/gnome-video-effects.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/libgudev.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
