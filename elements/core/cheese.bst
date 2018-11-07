kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/cheese/3.30/cheese-3.30.0.tar.xz
  ref: 5952cf6eeef12f9a174222a69199cf60c9b58b4844d83fb4ab9a0aa7e45be27f
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
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libcanberra.bst
- sdk/librsvg.bst
- filename: sdk/vala.bst
  type: build
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
