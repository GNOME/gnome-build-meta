kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/sushi
  track: master
depends:
- core-deps/gtksourceview-3.bst
- core-deps/libmusicbrainz.bst
- core/evince.bst
- sdk/WebKitGTK+.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer-plugins-base.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
