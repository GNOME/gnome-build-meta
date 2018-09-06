kind: meson
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-plugins-good
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/gst-plugins-base.bst
- sdk/libsoup.bst
- filename: desktop/lame.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  meson-local: |
    -Dsoup=enabled \
    -Dlame=enabled \
    -Dpulse=enabled
