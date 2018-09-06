kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.2.tar.xz
  ref: a4b7e80ba869f599307449b17c9e00b5d1e94d3ba1d8a1a386b8770b2ef01c7c
depends:
- sdk/pango.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/gobject-introspection.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
- filename: desktop/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: base/libogg.bst
  junction: freedesktop-sdk.bst
- filename: base/libtheora.bst
  junction: freedesktop-sdk.bst
- filename: base/libvorbis.bst
  junction: freedesktop-sdk.bst
- filename: base/opus.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Dgl=enabled \
    -Dgio=enabled \
    -Dpango=enabled \
    -Dogg=enabled \
    -Dopus=enabled \
    -Dvorbis=enabled \
    -Dorc=enabled \
    -Dtheora=enabled \
    -Dalsa=enabled \
    -Dx11=enabled \
    -Dxshm=enabled \
    -Dxvideo=enabled
