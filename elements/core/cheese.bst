kind: autotools
sources:
- kind: git
  url: git_gnome_org:cheese
  track: master
depends:
- core-deps/gnome-video-effects.bst
- core-deps/libgudev.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/librsvg.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
