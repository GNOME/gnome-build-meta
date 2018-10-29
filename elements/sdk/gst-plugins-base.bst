kind: autotools
sources:
- kind: tar
  url: https://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.14.4.tar.xz
  ref: f0b319c36be0ffc2a00380c77ba269cdf04e2b39bbc49d30b641fc35aa0b7952
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
