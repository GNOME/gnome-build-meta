kind: meson
sources:
- kind: tar
  url: gnome_downloads:sushi/3.33/sushi-3.33.3.tar.xz
depends:
- core-deps/gtksourceview.bst
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/WebKitGTK.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
