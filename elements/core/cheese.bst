kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cheese/3.28/cheese-3.28.0.tar.xz
  ref: 5c1e7a2e1fccc1b0c7b636fb03f2ae83862e2feaebadb94be37c3758182eaa19
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
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- sdk/librsvg.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
