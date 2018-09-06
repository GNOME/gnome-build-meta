kind: meson
sources:
  - kind: tar
    url: http://gstreamer.freedesktop.org/src/gst-plugins-ugly/gst-plugins-ugly-1.14.2.tar.xz
    ref: 55e097d9d93921fdcf7abb0ff92d23b21dd9098e632f1ba433603b3bd1cf3d69 # 1.14.2
depends:
  - sdk/gstreamer.bst
  - sdk/gst-plugins-base.bst
  - filename: base.bst
    junction: freedesktop-sdk.bst
    type: build
  - filename: base-platform.bst
    junction: freedesktop-sdk.bst
    type: runtime

variables:
  meson-local: |
    -Dorc=enabled
