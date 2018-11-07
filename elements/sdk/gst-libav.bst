kind: autotools
sources:
- kind: tar
  # Snapshot used by debian so we can use their patches
  url: https://deb.debian.org/debian/pool/main/g/gst-libav1.0/gst-libav1.0_1.15.0.1+git20180723+db823502.orig.tar.xz
- kind: patch
  path: files/gst-libav/gst-libav-stop-caching-codecs.patch
- kind: patch
  path: files/gst-libav/gst-libav-disable-1.15-api.patch
- kind: patch
  path: files/gst-libav/gst-libav-drop-1.15-dependency.patch
- kind: patch
  path: files/gst-libav/gst-libav-avmux-Place-pva-case-after-generic-case.patch
- kind: patch
  path: files/gst-libav/gst-libav-decoders-fix-draining.patch
depends:
- sdk/gst-plugins-base.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: desktop/ffmpeg.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/nasm.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: |
    --with-system-libav
  autogen: NOCONFIGURE=1 ./autogen.sh
environment:
  GST_CFLAGS: -DTRIPLET=\"%{gcc_triplet}\"
