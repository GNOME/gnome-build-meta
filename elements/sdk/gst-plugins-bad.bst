kind: meson
sources:
- kind: tar
  url: http://gstreamer.freedesktop.org/src/gst-plugins-bad/gst-plugins-bad-1.14.2.tar.xz
  ref: 34fab7da70994465a64468330b2168a4a0ed90a7de7e4c499b6d127c6c1b1eaf
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
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
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
    -Dcoloreffects=enabled \
    -Djpegformat=enabled \
    -Dmpegdemux=enabled \
    -Dmpegpsmux=enabled \
    -Dmpegtsdemux=enabled \
    -Dmpegtsmux=enabled \
    -Dvideofilters=enabled \
    -Dvideoparsers=enabled \
    -Dvideosignal=enabled \
    -Dwayland=enabled \
    -Dx11=enabled \
    -Dbz2=enabled \
    -Dcurl=enabled \
    -Dopus=enabled \
    -Drsvg=enabled \
    -Ddts=enabled \
    -Ddvb=enabled \
    -Dfaac=enabled \
    -Dfaad=enabled \
    -Dfbdev=enabled \
    -Dgl=enabled \
    -Dipcpipeline=enabled \
    -Dkate=enabled \
    -Dlibde265=enabled \
    -Dkms=enabled \
    -Dmpeg2enc=enabled \
    -Dmplex=enabled \
    -Dopenh264=enabled \
    -Dopenjpeg=enabled \
    -Drtmp=enabled \
    -Dsrt=enabled \
    -Dsrtp=enabled \
    -Duvch264=enabled \
    -Dvoaacenc=enabled \
    -Dvoaacenc=enabled \
    -Dvulkan=enabled \
    -Dwebrtc=enabled \
    -Dwebrtcdsp=enabled \
    -Dx265=enabled \
    -Dhls=enabled \
    -Dhls-crypto=enabled \
    -Dintrospection=enabled

