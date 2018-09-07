kind: autotools
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.2.tar.xz
  ref: 34fab7da70994465a64468330b2168a4a0ed90a7de7e4c499b6d127c6c1b1eaf
depends:
- core-deps/libgudev.bst
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
- filename: desktop/vulkan.bst
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
    --enable-orc \
    --enable-introspection \
    --enable-wayland
