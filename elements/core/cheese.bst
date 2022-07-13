kind: meson

sources:
- kind: tar
  url: gnome_downloads:cheese/43/cheese-43.alpha.tar.xz
  ref: badae9f7bda6fa5721dab7a08b8237a75e5325c0c9a669498ff54f772146e4cf
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
