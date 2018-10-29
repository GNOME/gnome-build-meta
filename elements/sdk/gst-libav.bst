kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:gstreamer/gst-libav
  track: master
    # Latest stable release doesn't support our ffmpeg, this is the closest commit
    # to 1.14.2 which supports ffmpeg n4.0.2 with minimal patching
  ref: 3b6597188ad25cca84ae5caa7b08767a5b4cfee7   # 1.14.0-39-g3b65971
  submodules:
    common:
      url: git_freedesktop_org:gstreamer/common
    gst-libs/ext/libav:
      url: https://git.ffmpeg.org/ffmpeg.git
    gst-libs/ext/gas-preprocessor:
      url: git://git.libav.org/gas-preprocessor.git
- kind: patch
  path: files/gst-libav/stop-caching-codecs.patch
- kind: patch
  path: files/gst-libav/fix-api.patch
depends:
- sdk/gst-plugins-base.bst
- sdk/ffmpeg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-system-libav
