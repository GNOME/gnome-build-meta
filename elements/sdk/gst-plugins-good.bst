kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.4.tar.xz
  ref: 5112bce6af0be62760687ca47873c90ce4d65d3fe920a3adf8145db7b07bff5d
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
