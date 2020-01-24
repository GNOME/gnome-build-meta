kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.5.tar.xz
  ref: 44da47126349fde90aed6c5ed0915f3b43f1d8802cd827139eb15a1fff1c6ad2
depends:
- sdk/gstreamer.bst
- sdk/gst-plugins-base.bst
- sdk/gobject-introspection.bst
- sdk/librsvg.bst
- sdk/opus.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland-protocols.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libva.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libglvnd.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libvdpau.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: base/curl.bst
  junction: freedesktop-sdk.bst
- filename: base/sndfile.bst
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
    --enable-experimental \
    --enable-orc \
    --enable-introspection \
    --enable-wayland
