kind: autotools
sources:
- kind: tar
  url: gstreamer:gst-plugins-good/gst-plugins-good-1.14.4.tar.xz
depends:
- filename: sdk/libsoup.bst
- filename: sdk/gobject-introspection.bst
  type: build
#- filename: sdk/gst-plugins-base.bst
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
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
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
