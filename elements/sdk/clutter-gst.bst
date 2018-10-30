kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/clutter-gst
  track: clutter-gst-3.0
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gstreamer.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
