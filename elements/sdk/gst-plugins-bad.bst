kind: autotools
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.3.tar.xz
  ref: b2224e5d9c1b85ad51233f6135524bb9e16a9172d395edc79c73b89094659fd5
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
  - arch == "i386":
      host: --host=i586-unknown-linux-gnu
  - arch == "arm":
      host: --host=arm-unknown-linux-gnueabi
  conf-local: |
    %{host} \
    --enable-experimental \
    --enable-orc \
    --enable-introspection \
    --enable-wayland
