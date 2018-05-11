kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cheese/3.28/cheese-3.28.0.tar.xz
  ref: 5c1e7a2e1fccc1b0c7b636fb03f2ae83862e2feaebadb94be37c3758182eaa19
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
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- base.bst
