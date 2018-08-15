depends:
- core-deps/clutter.bst
- core-deps/cogl.bst
- core-deps/gobject-introspection.bst
- core-deps/gst-plugins-base.bst
- core-deps/gstreamer.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: d8618a6d9accec0f2a8574c5e1220051f8505fb82b20336c26bdbd482aa6cb3a
  url: https://download.gnome.org/sources/clutter-gst/3.0/clutter-gst-3.0.26.tar.xz
