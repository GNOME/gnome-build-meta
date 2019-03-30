kind: autotools
sources:
- kind: tar
  url: gstreamer:gst-plugins-good/gst-plugins-good-1.14.4.tar.xz
depends:
- filename: sdk/gobject-introspection.bst
  type: build
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
# should be in base-platform
- filename: base/wavpack.bst
  junction: freedesktop-sdk.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
    --enable-cairo \
    --enable-experimental \
    --enable-introspection \
    --enable-lame \
    --enable-soup \
    --enable-orc \
    --enable-pulse \
    --with-default-visualizer=autoaudiosink
