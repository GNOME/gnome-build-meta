kind: autotools
sources:
- kind: tar
  url: gstreamer:gst-plugins-bad/gst-plugins-bad-1.14.4.tar.xz
depends:
- filename: sdk/gobject-introspection.bst
  type: build
- sdk/librsvg.bst
- sdk/gst-plugins-base.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libglvnd.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libvdpau.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland-protocols.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
    --enable-experimental \
    --enable-introspection \
    --enable-orc \
    --enable-wayland
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgstbadallocators-1.0.so'
        - '%{libdir}/libgstbadbase-1.0.so'
        - '%{libdir}/libgstcodecparsers-1.0.so'
        - '%{libdir}/libgstplayer-1.0.so'
        - '%{libdir}/libgstbadvideo-1.0.so'
        - '%{libdir}/libgstbadaudio-1.0.so'
        - '%{libdir}/libgstmpegts-1.0.so'
        - '%{libdir}/libgstadaptivedemux-1.0.so'
        - '%{libdir}/libgstinsertbin-1.0.so'
        - '%{libdir}/libgsturidownloader-1.0.so'
        - '%{libdir}/libgstbasecamerabinsrc-1.0.so'
        - '%{libdir}/libgstphotography-1.0.so'
        - '%{libdir}/libgstisoff-1.0.so'
        - '%{libdir}/libgstwebrtc-1.0.so'
        - '%{libdir}/libgstwayland-1.0.so'
