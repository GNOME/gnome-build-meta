kind: meson
sources:
- kind: tar
  url: gnome_downloads:cheese/3.34/cheese-3.34.0.tar.xz
  ref: d1865600ac88012e136b1ec3db72a4634f57bc2035895277be792bb078627e73
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-video-effects.bst
- core-deps/libcanberra.bst
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
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
