kind: meson
sources:
- kind: tar
  url: gnome_downloads:cheese/3.33/cheese-3.33.90.1.tar.xz
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
- filename: sdk/yelp-tools.bst
  type: build
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
