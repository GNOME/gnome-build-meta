kind: meson
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-1.14.3.tar.xz
  ref: 5112bce6af0be62760687ca47873c90ce4d65d3fe920a3adf8145db7b07bff5d
depends:
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- sdk/libsoup.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Daalib=disabled \
    -Ddv1394=disabled \
    -Ddv=disabled \
    -Dexamples=disabled \
    -Djack=disabled \
    -Dlibcaca=disabled \
    -Dqt5=disabled \
    -Dshout2=disabled \
    -Dtaglib=disabled \
    -Dtwolame=disabled \
    -Dv4l2=disabled \
    -Dwavpack=disabled
