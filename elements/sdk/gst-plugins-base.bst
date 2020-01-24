kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.5.tar.xz
  ref: 7bfa9b329ea7f3c654fa1b2d43650bf2646598a5e3cb21f42c516b7e975d638e
depends:
- sdk/gobject-introspection.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/pango.bst
# FIXME: remove opus from the GNOME SDK
# once the fd.o junction is updated to 18.08.9+
# see base/opus.bst
- sdk/opus.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xv.bst
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
    --enable-introspection \
    --enable-ogg \
    --enable-opus \
    --enable-orc \
    --enable-pango \
    --enable-theora \
    --enable-vorbis
