kind: meson

sources:
- kind: tar
  url: gnome_downloads:cheese/3.38/cheese-3.38.0.tar.xz
  ref: 88d2732b421b903110a2628db25c0d61e219c42bdfb5971151033fba95a8d16f
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter-gst.bst
- core-deps/clutter-gtk.bst
- core-deps/gnome-video-effects.bst
- core-deps/libcanberra.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
