kind: autotools
sources:
- kind: tar
  url: gnome_downloads:clutter-gst/3.0/clutter-gst-3.0.27.tar.xz
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gdk-pixbuf.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
