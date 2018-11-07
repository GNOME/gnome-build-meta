kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/clutter-gst/3.0/clutter-gst-3.0.26.tar.xz
  ref: d8618a6d9accec0f2a8574c5e1220051f8505fb82b20336c26bdbd482aa6cb3a
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/gstreamer-plugins-base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
