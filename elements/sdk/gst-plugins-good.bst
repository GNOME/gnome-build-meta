kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.5.tar.xz
  ref: 678221b3f0208b31b90df3ffa509857cc8bfc337f3f5073d195c5b365d616503
depends:
- sdk/gdk-pixbuf.bst
- sdk/gstreamer.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/libsoup.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base/libflac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: base/wavpack.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime

variables:
  host: ''
  (?):
  - arch == "i686":
      host: --host=i686-unknown-linux-gnu
  - arch == "arm":
      host: --host=arm-unknown-linux-gnueabi
  conf-local: |
    %{host} \
    --enable-cairo \
    --enable-experimental \
    --enable-introspection \
    --enable-lame \
    --enable-soup \
    --enable-orc \
    --enable-pulse \
    --with-default-visualizer=autoaudiosink
