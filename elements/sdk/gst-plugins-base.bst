kind: autotools
sources:
- kind: tar
  url: gstreamer:gst-plugins-base/gst-plugins-base-1.14.4.tar.xz
depends:
- filename: sdk/gobject-introspection.bst
  type: build
- sdk/gtk+-3.bst
- sdk/pango.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
    --enable-experimental \
    --enable-introspection \
    --enable-ogg \
    --enable-opus \
    --enable-orc \
    --enable-pango \
    --enable-theora \
    --enable-vorbis
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgstfft-1.0.so'
        - '%{libdir}/libgstrtp-1.0.so'
        - '%{libdir}/libgstsdp-1.0.so'
        - '%{libdir}/libgstvideo-1.0.so'
        - '%{libdir}/libgstapp-1.0.so'
        - '%{libdir}/libgstriff-1.0.so'
        - '%{libdir}/libgstrtsp-1.0.so'
        - '%{libdir}/libgstallocators-1.0.so'
        - '%{libdir}/libgsttag-1.0.so'
        - '%{libdir}/libgstaudio-1.0.so'
        - '%{libdir}/libgstpbutils-1.0.so'
        - '%{libdir}/libgstgl-1.0.so'
