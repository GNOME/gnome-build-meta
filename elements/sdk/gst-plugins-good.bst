kind: autotools
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.2.tar.xz
  ref: c0575e2811860bfff59b865b8d125153859a01f0615fa41e279b64d88d25caad
depends:
- sdk/gdk-pixbuf.bst
- sdk/gstreamer.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/libsoup.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime

variables:
  conf-local: |
    --enable-experimental \
    --enable-introspection \
    --enable-pulse \
    --enable-lame \
    --enable-soup \
    --enable-orc \
    --disable-monoscope \
    --disable-aalib \
    --enable-cairo \
    --disable-libcaca \
    --disable-jack \
    --with-default-visualizer=autoaudiosink
