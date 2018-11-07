kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/clutter-gst/3.0/clutter-gst-3.0.27.tar.xz
  ref: fe69bd6c659d24ab30da3f091eb91cd1970026d431179b0724f13791e8ad9f9d
depends:
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
