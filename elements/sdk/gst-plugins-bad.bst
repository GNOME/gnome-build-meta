kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-bad
  track: master
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
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libfdk-aac.bst
  junction: freedesktop-sdk.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libva.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libglvnd.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libvdpau.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Dbz2=enabled \
    -Dcoloreffects=enabled \
    -Dcurl=enabled \
    -Ddvb=enabled \
    -Dfbdev=enabled \
    -Dgl=enabled \
    -Dintrospection=enabled
    -Dkms=enabled \
    -Dmpegdemux=enabled \
    -Dmpegpsmux=enabled \
    -Dmpegtsdemux=enabled \
    -Dmpegtsmux=enabled \
    -Dopus=enabled \
    -Dorc=enabled \
    -Drsvg=enabled \
    -Dvideofilters=enabled \
    -Dvideoparsers=enabled \
    -Dvideosignal=enabled \
    -Dvulkan=enabled \
    -Dwayland=enabled \
    -Dx11=enabled \
