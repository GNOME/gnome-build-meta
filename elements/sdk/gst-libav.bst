kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
  submodules:
    common:
      checkout: True
      url: freedesktop:gstreamer/common
depends:
- sdk/gst-plugins-base.bst
- filename: desktop/ffmpeg.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-system-libav
