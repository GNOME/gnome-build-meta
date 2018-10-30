kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
depends:
- sdk/gst-plugins-base.bst
- sdk/ffmpeg.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-system-libav
